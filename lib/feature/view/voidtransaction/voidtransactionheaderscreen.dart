import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/view/voidtransaction/widgets/vtheaderlistwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class VoidTranscactioHeaderScreen extends StatefulWidget {
  const VoidTranscactioHeaderScreen({super.key});

  @override
  State<VoidTranscactioHeaderScreen> createState() =>
      _VoidTranscactioHeaderScreenState();
}

class _VoidTranscactioHeaderScreenState
    extends State<VoidTranscactioHeaderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.5,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
          ),
        ),
        // leading: SizedBox(
        //   height: 05,
        //   width: 04,
        //   child: SvgPicture.asset("assets/svg/path.svg",height: 60,fit: BoxFit.scaleDown,),
        // ),
        title: Text(
          "Void Transaction Approval",
          style: appHeading(),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(
              "assets/svg/filter.svg",
              height: 20,
              fit: BoxFit.scaleDown,
            ),
          ),
        ],
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SizedBox(
            height: 30.h,
            width: MediaQuery.of(context).size.width,
            child: TextFormField(
              // controller: _mustSellHeaderSearchCtrl,
              style: kfontstyle(fontSize: 13.sp, color: Colors.black87),
              decoration: InputDecoration(
                isDense: true,
                hintText: 'Search here..',
                suffix: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: IconButton(
                          onPressed: () {
                            /*  if (_mustSellHeaderSearchCtrl.text.isNotEmpty) {
                                _mustSellHeaderSearchCtrl.clear();
                                context
                                    .read<MustSellHeaderBloc>()
                                    .add(const ClearMustSellHeadersEvent());
                                context.read<MustSellHeaderBloc>().add(
                                    GetMustSellHeadersEvent(
                                        mode: selectedMustSellMode,
                                        searchQuery: ""));
                              } */
                          },
                          icon: Icon(
                            Icons.clear,
                            size: 10.sp,
                          )),
                    ),
                    SizedBox(
                      height: 10.h,
                    )
                  ],
                ),
                prefixIcon: Icon(
                  Icons.search,
                  size: 14.sp,
                ),
                filled: true,
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                border: /* InputBorder
                              .none  */
                    OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.grey.shade200),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.grey.shade200),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.grey.shade200),
                ),
              ),
              onChanged: (value) {
                /*  debounce = Timer(
                      const Duration(
                        milliseconds: 500,
                      ), () async {
                    context.read<MustSellHeaderBloc>().add(
                        GetMustSellHeadersEvent(
                            mode: selectedMustSellMode,
                            searchQuery: value.trim()));
                  }); */
              },
            ),
          ),
        ),
        SizedBox(
          height: 3.h,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SizedBox(
            height: 30.h,
            width: MediaQuery.of(context).size.width,
            child: DropdownButtonFormField(
              elevation: 0,
              //value: selectedMustSellMode,
              dropdownColor: Colors.white,
              style: kfontstyle(fontSize: 10.sp, color: Colors.black87),
              decoration: InputDecoration(
                hintText: "All Transactions",
                hintStyle: kfontstyle(fontSize: 10.sp, color: Colors.black87),
                filled: true,
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                border: /* InputBorder
                              .none  */
                    OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.grey.shade200),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.grey.shade200),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.grey.shade200),
                ),
              ),
              /* items: ddfilterMustSell
                    .map(
                      (e) => DropdownMenuItem(
                        value: e.mode,
                        child: Text(e.statusName),
                      ),
                    )
                    .toList(), */
              items: <String>['All Transactions', 'Option 2', 'Option 3']
                  .map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (value) {
                /* selectedMustSellMode = value!;
                  context
                      .read<MustSellHeaderBloc>()
                      .add(const ClearMustSellHeadersEvent());
                  context.read<MustSellHeaderBloc>().add(
                      GetMustSellHeadersEvent(
                          mode: value,
                          searchQuery: _mustSellHeaderSearchCtrl.text)); */
              },
            ),
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Pending Approvals",
                style: countHeading(),
              ),
              /* BlocBuilder<MustSellHeaderBloc, MustSellHeaderState>(
                  builder: (context, state) {
                    return Text(
                      state.when(
                        getMustsellHeadersState: (headers) =>
                            headers == null ? "0" : headers.length.toString(),
                        mustSellHeadersFailedState: () => "0",
                      ),
                      style: countHeading(),
                    );
                  },
                ) */
              Text(
                '11',
                style: countHeading(),
              )
            ],
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        const Expanded(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: VoidTransactionHeaderListWidget(),
        ))
      ]),
      bottomNavigationBar: SizedBox(
        height: 42.h,
        width: double.infinity,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      color: Colors.red.shade300,
                      onPressed: () {},
                      child: Text(
                        'Reject Selected',
                        style: kfontstyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      color: Colors.green.shade300,
                      onPressed: () {},
                      child: Text(
                        'Approve Selected',
                        style: kfontstyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
