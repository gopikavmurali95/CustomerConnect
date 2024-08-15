import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/bloc/invoice_header/invoice_header_bloc.dart';
import 'package:customer_connect/feature/view/invoices/inovicedetails.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:customer_connect/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class InvoiceHeaderListWidget extends StatelessWidget {
  final bool isfromUser;
  final LoginUserModel user;
  const InvoiceHeaderListWidget(
      {super.key, required this.isfromUser, required this.user});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InvoiceHeaderBloc, InvoiceHeaderState>(
      builder: (context, state) {
        return state.when(
          invoiceHeaderSuccessState: (invheader) => invheader == null
              // ? ListView.separated(
              //     physics: const NeverScrollableScrollPhysics(),
              //     shrinkWrap: true,
              //     itemBuilder: (context, index) =>
              //         ShimmerContainers(height: 60.h, width: double.infinity),
              //     separatorBuilder: (context, index) => Divider(
              //           color: Colors.grey[300],
              //         ),
              //     itemCount: 10)
              ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) => ShimmerContainers(
                          height: 60.h, width: double.infinity),
                      separatorBuilder: (context, index) => Divider(
                            color: Colors.grey[300],
                          ),
                      itemCount: 10),
                )
              : invheader.isEmpty
                  ? Center(
                      child: Text(
                        AppLocalizations.of(context)!.noDataFound,
                        style: kfontstyle(),
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: ListView.separated(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context, index) => InkWell(
                                onTap: () {
                                  //context.read<InvoiceDetailsBloc>().add(GetInvoiceDetailsEvent(id: invheader))
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => InvoiceDetailScreen(
                                        isfromUser: isfromUser,
                                        invoiceheader: invheader[index],
                                        user: user,
                                      ),
                                    ),
                                  );
                                },
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 20,
                                      backgroundColor: const Color(0xff95cbdb),
                                      child: Image.asset(
                                        'assets/images/listicon.png',
                                        height: 20.h,
                                        width: 20.w,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    Flexible(
                                      flex: 4,
                                      fit: FlexFit.tight,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(invheader[index].invoiceNo ?? '',
                                              style: blueTextStyle()),
                                          Row(
                                            children: [
                                              Text(
                                                invheader[index].cusCode ?? '',
                                                style: kfontstyle(
                                                  fontSize: 11.sp,
                                                  color:
                                                      const Color(0xff2C6B9E),
                                                ),
                                              ),
                                              Text(
                                                ' - ',
                                                style: kfontstyle(
                                                  fontSize: 11.sp,
                                                  color:
                                                      const Color(0xff2C6B9E),
                                                ),
                                              ),
                                              Expanded(
                                                child: Text(
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    selectedLocale
                                                                ?.languageCode ==
                                                            "en"
                                                        ? invheader[index]
                                                                .cusName ??
                                                            ''
                                                        : invheader[index]
                                                                .arcusName ??
                                                            '',
                                                    style: subTitleTextStyle()),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                  invheader[index].cusOutCode ??
                                                      '',
                                                  style: subTitleTextStyle()),
                                              Text(
                                                ' - ',
                                                style: subTitleTextStyle(),
                                              ),
                                              Expanded(
                                                child: Text(
                                                  selectedLocale
                                                              ?.languageCode ==
                                                          "en"
                                                      ? invheader[index]
                                                              .cusOutName ??
                                                          ''
                                                      : invheader[index]
                                                              .arcusOutName ??
                                                          '',
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: subTitleTextStyle(),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            '${invheader[index].payType} | ${invheader[index].rotName} | ${invheader[index].date} | ${invheader[index].time}',
                                            style: kfontstyle(
                                                fontSize: 10.sp,
                                                color: Colors.grey),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 12.w,
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          invheader[index].grandTotal ?? '',
                                          style: kfontstyle(fontSize: 11.sp),
                                        ),
                                        Container(
                                          height: 14.h,
                                          width: 30.w,
                                          decoration: BoxDecoration(
                                              color: invheader[index]
                                                          .invoiceType ==
                                                      'DI'
                                                  ? const Color(0xffe3f7e2)
                                                  : const Color(0xfff7f4e2),
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Center(
                                            child: Text(
                                              invheader[index].invoiceType ??
                                                  '',
                                              style: kfontstyle(
                                                  fontSize: 10.sp,
                                                  color:
                                                      const Color(0xff413434)),
                                            ),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                          separatorBuilder: (context,
                                  index) => /* const SizedBox(
                    height: 10,
                  ) */
                              Divider(
                                color: Colors.grey[300],
                              ),
                          itemCount: invheader.length),
                    ),
          invoiceHeaderFailedState: () => SizedBox(
            height: MediaQuery.of(context).size.height / 1.5,
            child: Center(
              child: Text(
                AppLocalizations.of(context)!.noDataAvailable,
                style: kfontstyle(),
              ),
            ),
          ),
        );
      },
    );
  }
}
