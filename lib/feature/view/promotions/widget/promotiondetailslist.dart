import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/state/bloc/promotion_details/promotion_details_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PromotionDetailsList extends StatelessWidget {
  const PromotionDetailsList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PromotionDetailsBloc, PromotionDetailsState>(
      builder: (context, state) {
        return state.when(
          getPromotionDetailsState: (prodetails) => prodetails == null
              ? const Center(
                  child: CupertinoActivityIndicator(
                    animating: true,
                    color: Colors.red,
                    radius: 30,
                  ),
                )
              : ListView.builder(
                  //physics: const NeverScrollableScrollPhysics(),
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
                              Text(prodetails[index].minQty ?? ''),
                              Text(prodetails[index].maxQty ?? ''),
                              Text(prodetails[index].qty ?? '')
                            ],
                          ),
                        ),
                        Divider(
                          color: Colors.grey.shade300,
                        )
                      ],
                    );
                  }),
          promotionDetailsFailed: () => Center(
            child: Text(
              'No Data Available',
              style: kfontstyle(),
            ),
          ),
        );
      },
    );
  }
}
