import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/target_details_list_model/target_details_list_model.dart';
import 'package:customer_connect/feature/data/models/target_header_list_model/target_header_list_model.dart';
import 'package:customer_connect/feature/state/bloc/targetpackagelist/target_package_list_bloc.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TargetPackageListItems extends StatefulWidget {
  final TargetHeaderListModel header;
  final TargetDetailsListModel details;
  const TargetPackageListItems(
      {super.key, required this.header, required this.details});

  @override
  State<TargetPackageListItems> createState() => _TargetPackageListItemsState();
}

class _TargetPackageListItemsState extends State<TargetPackageListItems> {
  @override
  void initState() {
    context.read<TargetPackageListBloc>().add(const ClearTargetPackageList());
    context.read<TargetPackageListBloc>().add(GetTargetPackageListEvent(
        pkgID: widget.details.pkgId ?? '',
        fromDate:
            '${DateTime.now().month}-${DateTime.now().day}-${DateTime.now().year}',
        rotID: widget.header.rotID ?? '',
        serachQuery: ''));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: BlocBuilder<TargetPackageListBloc, TargetPackageListState>(
        builder: (context, state) {
          return state.when(
              getTargetPackageListState: (list) => list == null
                  ? ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) => ShimmerContainers(
                          height: 60.h, width: double.infinity),
                      separatorBuilder: (context, index) => Divider(
                            color: Colors.grey[300],
                          ),
                      itemCount: 10)
                  : ListView.builder(
                      shrinkWrap: true,
                      //physics: const NeverScrollableScrollPhysics(),
                      itemCount: list.length,
                      itemBuilder: (context, index) => Column(
                            children: [
                              SizedBox(
                                height: 5.h,
                              ),
                              Row(
                                children: [
                                  Flexible(
                                      flex: 4,
                                      fit: FlexFit.tight,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            list[index].prdCode ?? '',
                                            style: loadTextStyle(),
                                          ),
                                          Text(
                                            '${list[index].prdName}  ',
                                            style: subTitleTextStyle(),
                                          )
                                        ],
                                      )),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Flexible(
                                      fit: FlexFit.tight,
                                      flex: 1,
                                      child: Text(
                                        '  ${list[index].achAmt} ',
                                        style: subTitleTextStyle(),
                                      )),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Flexible(
                                      fit: FlexFit.tight,
                                      flex: 1,
                                      child: Text(
                                        '   ${list[index].achQty?.split('.00').toList()[0]}',
                                        style: subTitleTextStyle(),
                                      ))
                                ],
                              ),
                              Divider(
                                color: Colors.grey[200],
                              ),
                            ],
                          )),
              targetPackageListFailure: () => const Center(
                    child: Text('No Data Available'),
                  ));
        },
      ),
    );
  }
}
