import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/bloc/materialreqhead/material_req_head_bloc.dart';
import 'package:customer_connect/feature/view/materialrequest/materialrequestdetail.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MaterialRequestHeaderScreen extends StatefulWidget {
  final LoginUserModel user;
  const MaterialRequestHeaderScreen({super.key, required this.user});

  @override
  State<MaterialRequestHeaderScreen> createState() =>
      _MaterialRequestHeaderScreenState();
}

class _MaterialRequestHeaderScreenState
    extends State<MaterialRequestHeaderScreen> {
  @override
  void initState() {
    context.read<MaterialReqHeadBloc>().add(const MaterialReqHeadClearEvent());
    context
        .read<MaterialReqHeadBloc>()
        .add(MaterialHeadSuccessEvent(userId: widget.user.usrId ?? '')
            // const GetReturnApprovalHeaders(
            // rotID: /*  widget.user.usrId ?? */ '45')
            );
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
          "Material Request",
          style: appHeading(),
        ),
      ),
      body: RefreshIndicator(
        triggerMode: RefreshIndicatorTriggerMode.anywhere,
        color: const Color.fromARGB(255, 181, 218, 245),
        displacement: BorderSide.strokeAlignCenter,
        onRefresh: () =>
            _onRefreshMaterialReqHeaderScreen(context, widget.user),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: BlocBuilder<MaterialReqHeadBloc, MaterialReqHeadState>(
                    builder: (context, state) {
                      return state.when(
                        materialreqheadsuccess: (headers) => headers == null
                            ? Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 0),
                                child: ListView.separated(
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    itemBuilder: (context, index) =>
                                        ShimmerContainers(
                                            height: 60.h,
                                            width: double.infinity),
                                    separatorBuilder: (context, index) =>
                                        Divider(
                                          color: Colors.grey[300],
                                        ),
                                    itemCount: headers!.length),
                              )
                            : ListView.separated(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemBuilder: (context, index) =>
                                    GestureDetector(
                                      onTap: () // {},
                                          {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  MaterialRequestDetailScreen(
                                                    user: widget.user,
                                                    materialrequest:
                                                        headers[index],
                                                  )),
                                        );
                                      },
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 50,
                                            width: 10,
                                            decoration: BoxDecoration(
                                                color: const Color(0xfffee8e0),
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                          ),
                                          SizedBox(
                                            width: 10.w,
                                          ),
                                          Expanded(
                                            child: Row(
                                              children: [
                                                Expanded(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        headers[index]
                                                                .mrhNumber ??
                                                            '',
                                                        style: kfontstyle(
                                                          fontSize: 12.sp,
                                                          color: const Color(
                                                              0xff2C6B9E),
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                      Row(
                                                        children: [
                                                          Text(
                                                            '${headers[index].strName} - ',
                                                            style: kfontstyle(
                                                              fontSize: 11.sp,
                                                              color: const Color(
                                                                  0xff2C6B9E),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Text(
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              headers[index]
                                                                      .warName ??
                                                                  '',
                                                              style: kfontstyle(
                                                                  fontSize:
                                                                      12.sp,
                                                                  color: const Color(
                                                                      0xff413434)),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Text(
                                                        headers[index]
                                                                .createdDate ??
                                                            '',
                                                        style: kfontstyle(
                                                            fontSize: 10.sp,
                                                            color: Colors.grey),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  height: 10.h,
                                                  width: 10.h,
                                                  decoration: BoxDecoration(
                                                    color: Colors.blue,
                                                    // headers[index].rahApprovalStatus!.isEmpty
                                                    //     ? Colors.red
                                                    //     : Colors.green,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      10,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                separatorBuilder: (context, index) => Divider(
                                      color: Colors.grey[300],
                                    ),
                                itemCount: headers.length),
                        materialreqheadFailed: () => SizedBox(
                          height: MediaQuery.of(context).size.height,
                          child: Center(
                            child: Text(
                              "no data available",
                              style: kfontstyle(),
                            ),
                          ),
                        ),
                        // returnHeaderFailedstate: () => Center(
                        //   child: Text(
                        //     'No Data Available',
                        //     style: kfontstyle(),
                        //   ),
                        // ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Future<void> _onRefreshMaterialReqHeaderScreen(
    BuildContext context, LoginUserModel model) async {
  context.read<MaterialReqHeadBloc>().add(const MaterialReqHeadClearEvent());
  context
      .read<MaterialReqHeadBloc>()
      .add(MaterialHeadSuccessEvent(userId: model.usrId!));
}
