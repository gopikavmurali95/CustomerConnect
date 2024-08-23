import 'dart:async';

import 'package:customer_connect/feature/data/models/picking_header_model/PickingOutModel.dart';
import 'package:customer_connect/feature/state/bloc/picking_detail/pickingdetail_bloc.dart';
import 'package:customer_connect/feature/view/PickingDetail/widgets/notstarted_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants/fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PickingDetailNotStarted extends StatefulWidget {
  final PickingOutModel picking;
  const PickingDetailNotStarted({super.key, required this.picking});
  @override
  State<PickingDetailNotStarted> createState() =>
      _PickingDetailNotStartedState();
}

final _pickingNotStartedSearchCtrl = TextEditingController();
Timer? debounce;

class _PickingDetailNotStartedState extends State<PickingDetailNotStarted> {
  @override
  void initState() {
    _pickingNotStartedSearchCtrl.clear();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.2,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
          ),
        ),
        title: Text(
          "${AppLocalizations.of(context)!.picking} ${AppLocalizations.of(context)!.details}",
          style: appHeading(),
        ),
        bottom: PreferredSize(
          preferredSize: const Size(100, 100),
          child: Column(
            children: [
              ListTile(
                  title: Text(
                    "${widget.picking.pickingNumber}",
                    style: blueTextStyle(),
                  ),
                  subtitle: Text(
                    "${widget.picking.rotCode}",
                    style: subTitleTextStyle(),
                  ),
                  trailing: Container(
                      height: 20,
                      width: 65,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xffCFE8FF),
                      ),
                      child: Center(
                          child: Text(
                        AppLocalizations.of(context)!.not_started,
                        style: const TextStyle(fontSize: 10),
                      )))),
              Padding(
                padding:
                    const EdgeInsets.only(left: 15.0, right: 15, bottom: 10),
                child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey.shade200),
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: const [
                          BoxShadow(
                              color: Color(0xff00000050),
                              blurRadius: 0.4,
                              spreadRadius: 0.4)
                        ]),
                    child: TextFormField(
                      controller: _pickingNotStartedSearchCtrl,
                      onChanged: (value) {
                        if (debounce?.isActive ?? false) debounce!.cancel();
                        debounce = Timer(
                          const Duration(
                            milliseconds: 500,
                          ),
                          () async {
                            context
                                .read<PickingdetailBloc>()
                                .add(const ClearPickingDetailevent());
                            context.read<PickingdetailBloc>().add(
                                PickingDetailSuccess(
                                    pickingID: widget.picking.pickingID!,
                                    searchQuery: value.trim()));
                          },
                        );
                      },
                      decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.search,
                            size: 20,
                          ),
                          hintText: AppLocalizations.of(context)!.searchItems,
                          hintStyle: const TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.normal),
                          isDense: true,
                          counterText: "",
                          contentPadding: const EdgeInsets.all(15.0),
                          filled: true,
                          fillColor: Colors.white,
                          suffix: InkWell(
                            onTap: () {
                              _pickingNotStartedSearchCtrl.clear();
                              context
                                  .read<PickingdetailBloc>()
                                  .add(const ClearPickingDetailevent());
                              context.read<PickingdetailBloc>().add(
                                  PickingDetailSuccess(
                                      pickingID: widget.picking.pickingID!,
                                      searchQuery: ''));
                            },
                            child: const Icon(
                              Icons.close,
                              size: 14,
                            ),
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide.none)),
                      textAlign: TextAlign.start,
                      maxLines: 1,
                      maxLength: 20,
                      // controller: _locationNameTextController,
                    )),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 30,
              color: Colors.grey.shade200,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 0),
                          child: Text(
                            AppLocalizations.of(context)!.items,
                            style: boxHeading(),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 0),
                          child: Text(
                            AppLocalizations.of(context)!.uom,
                            style: boxHeading(),
                          ),
                        ),
                        SizedBox(
                          width: 50.w,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 0),
                          child: Text(
                            AppLocalizations.of(context)!.qty,
                            style: boxHeading(),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const NotStartedDetail()
          ],
        ),
      ),
    );
  }
}
