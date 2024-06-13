import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/state/bloc/cuspromodetail/cus_promo_detail_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CusInsightPromotionDetaoilsList extends StatelessWidget {
  const CusInsightPromotionDetaoilsList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CusPromoDetailBloc, CusPromoDetailState>(
      builder: (context, state) {
        return state.when(
          getCusPromoDetailState: (details) => details == null
              ? const Center(
                  child: CupertinoActivityIndicator(
                    animating: true,
                    color: Colors.red,
                    radius: 30,
                  ),
                )
              : ListView.builder(
                  // physics: const NeverScrollableScrollPhysics(),
                  // shrinkWrap: true,
                  itemCount: details.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                  flex: 6,
                                  fit: FlexFit.tight,
                                  child: Text(
                                      textAlign: TextAlign.start,
                                      details[index].minQty ?? '')),
                              Flexible(
                                  flex: 5,
                                  fit: FlexFit.tight,
                                  child: Text(details[index].maxQty ?? '')),
                              Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: Text(details[index].qty ?? ''))
                            ],
                          ),
                        ),
                        Divider(
                          color: Colors.grey.shade300,
                        )
                      ],
                    );
                  }),
          getCusPromodetailFailedState: () => Center(
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
