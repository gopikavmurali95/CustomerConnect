import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/state/bloc/promotion_details/promotion_details_bloc.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PromotionDetailsList extends StatelessWidget {
  const PromotionDetailsList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PromotionDetailsBloc, PromotionDetailsState>(
      builder: (context, state) {
        return state.when(
          getPromotionDetailsState: (prodetails) => prodetails == null
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
              : ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: prodetails.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 40, vertical: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                prodetails[index].minQty ?? '',
                                style: subTitleTextStyle(),
                              ),
                              Text(
                                prodetails[index].maxQty ?? '',
                                style: subTitleTextStyle(),
                              ),
                              Text(
                                prodetails[index].qty ?? '',
                                style: subTitleTextStyle(),
                              )
                            ],
                          ),
                        ),
                        Divider(
                          color: Colors.grey.shade300,
                        )
                      ],
                    );
                  }),
          promotionDetailsFailed: () => SizedBox(
            height: MediaQuery.of(context).size.height / 2,
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
