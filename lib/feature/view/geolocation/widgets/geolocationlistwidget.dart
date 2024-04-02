import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/confirm_geo_code_in_model/confirm_geo_code_in_model.dart';
import 'package:customer_connect/feature/data/models/cus_geo_loc_in_model/cus_geo_loc_in_model.dart';
import 'package:customer_connect/feature/data/models/cus_ins_customers_model/cus_ins_customers_model.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/bloc/cusgeolocation/cus_geo_location_bloc.dart';
import 'package:customer_connect/feature/state/cubit/updategeolocation/update_geo_location_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GeoLocationListWidget extends StatelessWidget {
  final LoginUserModel user;
  final CusInsCustomersModel customer;
  final TextEditingController fromdatectrl;
  final TextEditingController todatectrl;
  const GeoLocationListWidget(
      {super.key,
      required this.user,
      required this.customer,
      required this.fromdatectrl,
      required this.todatectrl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: BlocListener<UpdateGeoLocationCubit, UpdateGeoLocationState>(
        listener: (context, state) {
          state.when(
            updateGeoLocationSuccessState: (result) {
              if (result != null) {
                Navigator.pop(context);
                context.read<CusGeoLocationBloc>().add(
                      GetCusGeoLocationEvent(
                        cusGeoLocInModel: CusGeoLocInModel(
                            cusId: /* widget.customer.cusId */ '1',
                            area: '',
                            fromDate: fromdatectrl.text,
                            toDate: todatectrl.text,
                            route: '',
                            subArea: '',
                            userId: user.usrId),
                      ),
                    );
                showCupertinoDialog(
                  context: context,
                  builder: (context) => CupertinoAlertDialog(
                    title: Text(
                      'Alert',
                      style: kfontstyle(),
                    ),
                    content: Text('Update Geocode ${result.title}'),
                    actions: [
                      CupertinoDialogAction(
                        child: const Text('Ok'),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                );
              }
            },
            updateGeoLocationFailedState: () {
              Navigator.pop(context);
              showCupertinoDialog(
                context: context,
                builder: (context) => CupertinoAlertDialog(
                  title: Text(
                    'Alert',
                    style: kfontstyle(),
                  ),
                  content: const Text('Update Geocode Failed'),
                  actions: [
                    CupertinoDialogAction(
                      child: const Text('Ok'),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              );
            },
            updateGeoLocationLoadingSTate: () {
              showCupertinoDialog(
                  context: context,
                  builder: (context) => const CupertinoActivityIndicator(
                        animating: true,
                        color: Colors.red,
                        radius: 30,
                      ));
            },
          );
        },
        child: BlocBuilder<CusGeoLocationBloc, CusGeoLocationState>(
          builder: (context, state) {
            return state.when(
              getCusGeoLocationState: (geolocations) => geolocations == null
                  ? const Center(
                      child: CupertinoActivityIndicator(
                        animating: true,
                        color: Colors.red,
                        radius: 30,
                      ),
                    )
                  : ListView.separated(
                      shrinkWrap: true,
                      itemBuilder: (context, index) => Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                geolocations[index].cglCusGeoLoc ?? "",
                                style: kfontstyle(
                                  fontSize: 12.sp,
                                  color: const Color(0xff2C6B9E),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                '${geolocations[index].usrName} - ${geolocations[index].cusName}',
                                style: kfontstyle(
                                  fontSize: 12.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                geolocations[index].createdDate ?? '',
                                style: kfontstyle(
                                  fontSize: 10.sp,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: 8.h,
                              ),
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      gradient: const LinearGradient(
                                        colors: [
                                          Color(0xff99bedb),
                                          Color(0xff62a5d6)
                                        ],
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 30.w, vertical: 6),
                                      child: InkWell(
                                        onTap: () {},
                                        child: Row(
                                          children: [
                                            Text(
                                              'View On Map',
                                              style: kfontstyle(
                                                fontSize: 10.sp,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.white,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  InkWell(
                                    onTap: geolocations[index].status == 'N'
                                        ? () {
                                            showCupertinoDialog(
                                              context: context,
                                              builder: (context) =>
                                                  CupertinoAlertDialog(
                                                title: Text(
                                                  'Alert',
                                                  style: kfontstyle(),
                                                ),
                                                content: const Text(
                                                    'Do you want to confirm this Geocode'),
                                                actions: [
                                                  CupertinoDialogAction(
                                                    child: const Text('No'),
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                    },
                                                  ),
                                                  CupertinoDialogAction(
                                                    child:
                                                        const Text('Confirm'),
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                      context
                                                          .read<
                                                              UpdateGeoLocationCubit>()
                                                          .addUpdateLoading();
                                                      context
                                                          .read<
                                                              UpdateGeoLocationCubit>()
                                                          .updateGeoLocation(
                                                            ConfirmGeoCodeInModel(
                                                              cglId:
                                                                  geolocations[
                                                                          index]
                                                                      .cglId,
                                                              cglCusGeoLoc:
                                                                  geolocations[
                                                                          index]
                                                                      .cglCusGeoLoc,
                                                              cusId: '1',
                                                            ),
                                                          );
                                                    },
                                                  )
                                                ],
                                              ),
                                            );
                                          }
                                        : null,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          gradient:
                                              geolocations[index].status == 'N'
                                                  ? const LinearGradient(
                                                      colors: [
                                                        Color(0xff7fc781),
                                                        Color(0xff55bf5c)
                                                      ],
                                                    )
                                                  : null,
                                          color:
                                              geolocations[index].status == 'N'
                                                  ? null
                                                  : Colors.grey),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 30.w, vertical: 6),
                                        child: Row(
                                          children: [
                                            Text(
                                              'Confirm Geocode',
                                              style: kfontstyle(
                                                fontSize: 10.sp,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.white,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                      separatorBuilder: (context, index) => Divider(
                            color: Colors.grey[300],
                          ),
                      itemCount: geolocations.length),
              getgeolocationFailedState: () => Center(
                child: Text(
                  'No Data Available',
                  style: kfontstyle(),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
