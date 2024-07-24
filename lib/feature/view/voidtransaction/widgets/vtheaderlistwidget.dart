import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/void_transaction_json_model/void_transaction_json_model.dart';
import 'package:customer_connect/feature/state/bloc/voidtransactionheader/void_transaction_header_bloc.dart';
import 'package:customer_connect/feature/state/cubit/voidtransactionselection/void_transaction_selection_cubit.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VoidTransactionHeaderListWidget extends StatefulWidget {
  const VoidTransactionHeaderListWidget({super.key});

  @override
  State<VoidTransactionHeaderListWidget> createState() =>
      _VoidTransactionHeaderListWidgetState();
}

List<VoidTransactionJsonModel> voidTransactionJsonstriongList = [];

class _VoidTransactionHeaderListWidgetState
    extends State<VoidTransactionHeaderListWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VoidTransactionHeaderBloc, VoidTransactionHeaderState>(
        builder: (context, state) {
      return state.when(
        getvoidTransactionHeaderState: (headers) => headers == null
            ? Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                child: ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) =>
                        ShimmerContainers(height: 60.h, width: double.infinity),
                    separatorBuilder: (context, index) => Divider(
                          color: Colors.grey[300],
                        ),
                    itemCount: 10),
              )
            : headers.isEmpty
                ? Center(
                    child: Text(
                      'No Data Found',
                      style: kfontstyle(),
                    ),
                  )
                : ListView.separated(
                    shrinkWrap: true,
                    itemCount: headers.length,
                    itemBuilder: (context, index) => Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 50,
                              width: 10,
                              decoration: BoxDecoration(
                                  color: const Color(0xfffee8e0),
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Expanded(
                                child: Row(
                              children: [
                                Expanded(
                                    child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      headers[index].vtaId ?? '',
                                      style: kfontstyle(
                                        fontSize: 12.sp,
                                        color: const Color(0xff2C6B9E),
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            overflow: TextOverflow.ellipsis,
                                            '${headers[index].rotCode} - ${headers[index].rotName}',
                                            style: kfontstyle(
                                                fontSize: 12.sp,
                                                color: const Color(0xff413434)),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            overflow: TextOverflow.ellipsis,
                                            headers[index].type ?? '',
                                            style: kfontstyle(
                                                fontSize: 12.sp,
                                                color: const Color(0xff413434)),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      headers[index].createdDate ?? '',
                                      style: kfontstyle(
                                          fontSize: 10.sp, color: Colors.grey),
                                    ),
                                  ],
                                ))
                              ],
                            )),
                            /* headers[index].type != 'Pending'
                                ? const SizedBox.shrink()
                                : */
                            IntrinsicHeight(
                              child: Row(
                                children: [
                                  VerticalDivider(
                                    color: Colors.grey[300],
                                    thickness: 1,
                                  ),
                                  BlocBuilder<VoidTransactionSelectionCubit,
                                      VoidTransactionSelectionState>(
                                    builder: (context, state) {
                                      return state.when(
                                          voidTransactionSelectedState:
                                              (selected) => Checkbox(
                                                    value:
                                                        voidTransactionJsonstriongList
                                                            .where((element) =>
                                                                element.vtaId ==
                                                                headers[index]
                                                                    .vtaId)
                                                            .isNotEmpty,
                                                    side: BorderSide(
                                                        color:
                                                            Colors.grey[500]!),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        4)),
                                                    activeColor:
                                                        Colors.green.shade300,
                                                    onChanged: (bool? value) {
                                                      if (voidTransactionJsonstriongList
                                                          .where((element) =>
                                                              element.vtaId ==
                                                              headers[index]
                                                                  .vtaId)
                                                          .isEmpty) {
                                                        voidTransactionJsonstriongList.add(
                                                            VoidTransactionJsonModel(
                                                                vtaId: headers[
                                                                        index]
                                                                    .vtaId,
                                                                status: ''));
                                                      } else {
                                                        voidTransactionJsonstriongList
                                                            .removeWhere(
                                                                (element) =>
                                                                    element
                                                                        .vtaId ==
                                                                    headers[index]
                                                                        .vtaId);
                                                      }
                                                      setState(() {});
                                                    },
                                                  ));
                                    },
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    separatorBuilder: (context, index) => Divider(
                      color: Colors.grey[300],
                    ),
                  ),
        voidTransactionHeaderFailure: () => Center(
          child: Text(
            'No Data Available',
            style: kfontstyle(),
          ),
        ),
      );
    });
  }
}
