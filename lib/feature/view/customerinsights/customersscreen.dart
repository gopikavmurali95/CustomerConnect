import 'dart:async';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/bloc/customers/customers_list_bloc_bloc.dart';
import 'package:customer_connect/feature/state/cubit/customersearch/customer_search_loading_cubit.dart';
import 'package:customer_connect/feature/view/customerinsights/widgets/customerlistingwidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomersScren extends StatefulWidget {
  final LoginUserModel user;
  const CustomersScren({super.key, required this.user});

  @override
  State<CustomersScren> createState() => _CustomersScrenState();
}

final _customerSearchCtrl = TextEditingController();
Timer? debounce;
bool isSearchLoading = false;

class _CustomersScrenState extends State<CustomersScren> {
  @override
  void initState() {
    _customerSearchCtrl.clear();
    context.read<CustomersListBlocBloc>().add(const ClearCustomersEvent());
    context.read<CustomersListBlocBloc>().add(GetCustomersEvent(
        userId: widget.user.usrId ?? '',
        area: '',
        subarea: '',
        route: '',
        searchQuery: ''));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        titleSpacing: 0.5,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
            size: 20,
          ),
        ),
        title: Text(
          "Customers ",
          style: appHeading(),
        ),
        bottom: PreferredSize(
          preferredSize: const Size(100, 50),
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15),
            child: Container(
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey.shade200),
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: const [
                      BoxShadow(
                          // ignore: use_full_hex_values_for_flutter_colors
                          color: Color(0xff00000050),
                          blurRadius: 0.4,
                          spreadRadius: 0.4)
                    ]),
                child: TextFormField(
                  controller: _customerSearchCtrl,
                  onChanged: (value) {
                    if (debounce?.isActive ?? false) debounce!.cancel();
                    debounce = Timer(
                      const Duration(
                        milliseconds: 500,
                      ),
                      () async {
                        isSearchLoading = true;
                        context
                            .read<CustomerSearchLoadingCubit>()
                            .addSearchLoadingEvent();
                        context.read<CustomersListBlocBloc>().add(
                            GetCustomersEvent(
                                userId: widget.user.usrId ?? '',
                                area: '',
                                subarea: '',
                                route: '',
                                searchQuery: value.trim()));
                      },
                    );
                  },
                  decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.search,
                        size: 20,
                      ),
                      suffix: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 5.h),
                          Expanded(
                            child: IconButton(
                              onPressed: () {
                                _customerSearchCtrl.clear();
                                isSearchLoading = true;
                                context
                                    .read<CustomerSearchLoadingCubit>()
                                    .addSearchLoadingEvent();
                                context.read<CustomersListBlocBloc>().add(
                                    GetCustomersEvent(
                                        userId: widget.user.usrId ?? '',
                                        area: '',
                                        subarea: '',
                                        route: '',
                                        searchQuery: ''));
                              },
                              icon: Icon(
                                Icons.close,
                                size: 13.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                      hintText: "Search Customers",
                      hintStyle: kfontstyle(
                          fontSize: 14,
                          color: Colors.grey,
                          fontWeight: FontWeight.normal),
                      isDense: true,
                      counterText: "",
                      contentPadding: const EdgeInsets.all(15.0),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide.none)),
                  textAlign: TextAlign.start,
                  maxLines: 1,
                  maxLength: 20,
                  // controller: _locationNameTextController,
                )),
          ),
        ),
      ),
      body:
          BlocListener<CustomerSearchLoadingCubit, CustomerSearchLoadingState>(
        listener: (context, state) {
          state.when(
            searchLoadingState: () {
              showCupertinoDialog(
                  context: context,
                  builder: (context) => const PopScope(
                        canPop: false,
                        child: CupertinoActivityIndicator(
                          animating: true,
                          color: Colors.red,
                          radius: 30,
                        ),
                      ));
            },
            removeSearchLloading: () {
              Navigator.pop(context);
            },
          );
        },
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //SizedBox(width: 05,),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, right: 20, top: 10),
                  child: Text(
                    "Customers",
                    style: countHeading(),
                  ),
                ),
                BlocListener<CustomersListBlocBloc, CustomersListBlocState>(
                  listener: (context, state) {
                    state.when(
                      getCustomersSstate: (customers) {
                        if (isSearchLoading == true) {
                          isSearchLoading = false;
                          context
                              .read<CustomerSearchLoadingCubit>()
                              .removeLoadingEvent();
                        }
                      },
                      getcustomersFailedState: () {},
                    );
                  },
                  child: BlocBuilder<CustomersListBlocBloc,
                      CustomersListBlocState>(
                    builder: (context, state) {
                      return state.when(
                        getCustomersSstate: (customers) => customers == null
                            ? Padding(
                                padding: const EdgeInsets.only(
                                    left: 20.0, right: 20, top: 10),
                                child: Text(
                                  "0",
                                  style: countHeading(),
                                ),
                              )
                            : Padding(
                                padding: const EdgeInsets.only(
                                    left: 20.0, right: 20, top: 10),
                                child: Text(
                                  "${customers.length}",
                                  style: countHeading(),
                                ),
                              ),
                        getcustomersFailedState: () => Padding(
                          padding: const EdgeInsets.only(
                              left: 20.0, right: 20, top: 10),
                          child: Text(
                            "130",
                            style: countHeading(),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                // SizedBox(width: ,),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Expanded(
                child: CustomersListingWidget(
              user: widget.user,
            ))
          ],
        ),
      ),
    );
  }
}
