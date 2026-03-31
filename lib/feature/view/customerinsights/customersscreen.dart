import 'dart:async';
import 'dart:io';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/cu_s_ins_rot_list/cu_s_ins_rot_list.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/bloc/cusinscustomerscount/cus_ins_customers_count_bloc.dart';
import 'package:customer_connect/feature/state/bloc/customers/customers_list_bloc_bloc.dart';
import 'package:customer_connect/feature/state/bloc/getallroutes/get_all_route_bloc.dart';
import 'package:customer_connect/feature/state/cubit/customersearch/customer_search_loading_cubit.dart';
import 'package:customer_connect/feature/view/HomeScreen/widgets/homepopupmenu.dart';
import 'package:customer_connect/feature/view/customerinsights/widgets/customerlistingwidget.dart';
import 'package:customer_connect/feature/view/notification/notification.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:customer_connect/l10n/app_localizations.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomersScren extends StatefulWidget {
  final LoginUserModel user;
  const CustomersScren({super.key, required this.user});

  @override
  State<CustomersScren> createState() => _CustomersScrenState();
}

final _customerSearchCtrl = TextEditingController();
final _routeIDCtrl = TextEditingController();

Timer? debounce;
bool isSearchLoading = false;
int pagecounter = 1;
ScrollController customersscrollController = ScrollController();
bool isfirstfetch = true;

class _CustomersScrenState extends State<CustomersScren> {
  void _onSearch(String query) {
    if (debounce?.isActive ?? false) debounce!.cancel();

    debounce = Timer(const Duration(milliseconds: 400), () {
      pagecounter = 1;
      isfirstfetch = true;

      context.read<CustomersListBlocBloc>().add(const ClearCustomersEvent());
      context.read<CustomersListBlocBloc>().add(GetCustomersEvent(
        userId: "1147",//widget.user.usrId ?? '',
          area: '',
          subarea: '',
          route: _routeIDCtrl.text,
          searchQuery: query.trim(),
          pagenum: '1'));

      context.read<CusInsCustomersCountBloc>().add(GetCustomersCountEvent(
            userId: "1147",//widget.user.usrId ?? '',
          area: '',
          subarea: '',
          route: _routeIDCtrl.text,
          searchString: query.trim(),
          pagenum: '1'));
    });
  }

  @override
  void initState() {
    pagecounter = 1;
    customersscrollController = ScrollController();
    _customerSearchCtrl.clear();
    _routeIDCtrl.clear();

    context
        .read<GetAllRouteBloc>()
        .add(GetAllRouteForCusEvent(
         // userID: widget.user.usrId ?? ''
          userID:"1147",// widget.user.usrId ?? ''
          ));
    context.read<CustomersListBlocBloc>().add(const ClearCustomersEvent());

    context.read<CustomersListBlocBloc>().add(GetCustomersEvent(
         userId: "1147",//widget.user.usrId ?? '',
        area: '',
        subarea: '',
        route: '',
        searchQuery: '',
        pagenum: '1'));
    context.read<CusInsCustomersCountBloc>().add(GetCustomersCountEvent(
       userId: "1147",//widget.user.usrId ?? '',
        area: '',
        subarea: '',
        route: '',
        searchString: '',
        pagenum: '1'));

    setUpScrollController(
          userId: "1147",//widget.user.usrId ?? '',
        area: '',
        subArea: '',
        route: '',
        searchQuery: '',
        pageNum: pagecounter.toString());

    super.initState();
  }

  @override
  void dispose() {
    debounce?.cancel();
    super.dispose();
  }

  setUpScrollController(
      {required String userId,
      required String area,
      required String subArea,
      required String route,
      required String searchQuery,
      required String pageNum}) {
    if (isfirstfetch == true) {
      isfirstfetch = false;
      pagecounter++;
      context.read<CusInsCustomersCountBloc>().add(GetCustomersCountEvent(
            userId: "1147",//widget.user.usrId ?? '',
          area: '',
          subarea: '',
          route: '',
          searchString: '',
          pagenum: '1'));
      context.read<CustomersListBlocBloc>().add(GetCustomersEvent(
           userId: "1147",//widget.user.usrId ?? '',
          area: '',
          subarea: '',
          route: '',
          searchQuery: _customerSearchCtrl.text,
          pagenum: '1'));
    }
    customersscrollController.addListener(() {
      if (customersscrollController.position.atEdge) {
        if (customersscrollController.position.pixels != 0) {
          context.read<CustomersListBlocBloc>().add(GetCustomersEvent(
              userId: "1147",//widget.user.usrId ?? '',
              area: '',
              subarea: '',
              route: _routeIDCtrl.text,
              searchQuery: _customerSearchCtrl.text,
              pagenum: pagecounter.toString()));
          pagecounter++;
        }
      }
    });
  }

  Future<void> _onRefreshCustomers(BuildContext context) async {
    _customerSearchCtrl.clear();

    context.read<CustomersListBlocBloc>().add(const ClearCustomersEvent());

    context.read<CustomersListBlocBloc>().add(GetCustomersEvent(
        userId: "1147",//widget.user.usrId ?? '',
        area: '',
        subarea: '',
        route: '',
        searchQuery: '',
        pagenum: '1'));
    await Future.delayed(const Duration(seconds: 2));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF9FAFB),
      // appBar: AppBar(
      //   surfaceTintColor: Colors.white,
      //   backgroundColor: Colors.white,
      //   titleSpacing: 0.5,
      //   leading: IconButton(
      //     onPressed: () {
      //       Navigator.pop(context);
      //     },
      //     icon: const Icon(
      //       Icons.arrow_back_ios_rounded,
      //       size: 20,
      //     ),
      //   ),
      //   title: Text(
      //     AppLocalizations.of(context)!.customer,
      //     style: appHeading(),
      //   ),
      // ),
      body: RefreshIndicator(
        triggerMode: RefreshIndicatorTriggerMode.anywhere,
        color: const Color.fromARGB(255, 181, 218, 245),
        displacement: BorderSide.strokeAlignCenter,
        onRefresh: () => _onRefreshCustomers(context),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            controller: customersscrollController,
            child: BlocListener<CustomerSearchLoadingCubit,
                CustomerSearchLoadingState>(
              listener: (context, state) {
                state.when(
                  searchLoadingState: () {
                    showCupertinoDialog(
                        context: context,
                        builder: (context) => const PopScope(
                              canPop: true,
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
                  CustomersHeaderSection(
                    searchController: _customerSearchCtrl,
                      onChanged: (v) => _onSearch(v),
                          onClear: () {
                          _customerSearchCtrl.clear();
                            _onSearch('');
                    }, user: widget.user,
    ),
    SizedBox(height: 10,),
                  // Row(
                  //   children: [
                  //     Expanded(
                  //       child: BlocBuilder<GetAllRouteBloc, GetAllRouteState>(
                  //         builder: (context, state) {
                  //           return state.when(
                  //             getAllRoutesSuccessState: (routes) => routes ==
                  //                     null
                  //                 ? Padding(
                  //                     padding: const EdgeInsets.symmetric(
                  //                         horizontal: 10, vertical: 10),
                  //                     child: ShimmerContainers(
                  //                         height: 30.h, width: double.infinity),
                  //                   )
                  //                 : Padding(
                  //                     padding: const EdgeInsets.symmetric(
                  //                         horizontal: 10, vertical: 10),
                  //                     child: Container(
                  //                         height: 40.h,
                  //                         decoration: BoxDecoration(
                  //                             color: Colors.white,
                  //                             border: Border.all(
                  //                                 color: Colors.grey.shade200),
                  //                             borderRadius:
                  //                                 BorderRadius.circular(10.0),
                  //                             boxShadow: const [
                  //                               BoxShadow(
                  //                                   // ignore: use_full_hex_values_for_flutter_colors
                  //                                   color: Color(0xff00000050),
                  //                                   blurRadius: 0.4,
                  //                                   spreadRadius: 0.4)
                  //                             ]),
                  //                         child: Padding(
                  //                           padding: const EdgeInsets.symmetric(
                  //                               horizontal: 10),
                  //                           child: Theme(
                  //                             data: ThemeData(
                  //                                 canvasColor: Colors.white),
                  //                             child:
                  //                                 DropdownSearch<CuSInsRotList>(
                  //                               popupProps: PopupProps.menu(
                  //                                   showSearchBox: true,
                  //                                   searchFieldProps:
                  //                                       TextFieldProps(
                  //                                     showCursor: true,
                  //                                     decoration:
                  //                                         InputDecoration(
                  //                                       hintText:
                  //                                           AppLocalizations.of(
                  //                                                   context)!
                  //                                               .searchRoute,
                  //                                       hintStyle: kfontstyle(),
                  //                                       border:
                  //                                           UnderlineInputBorder(
                  //                                         borderSide:
                  //                                             BorderSide(
                  //                                                 color: Colors
                  //                                                         .grey[
                  //                                                     200]!),
                  //                                       ),
                  //                                       focusedBorder:
                  //                                           UnderlineInputBorder(
                  //                                         borderSide:
                  //                                             BorderSide(
                  //                                                 color: Colors
                  //                                                         .grey[
                  //                                                     200]!),
                  //                                       ),
                  //                                       enabledBorder:
                  //                                           UnderlineInputBorder(
                  //                                         borderSide:
                  //                                             BorderSide(
                  //                                                 color: Colors
                  //                                                         .grey[
                  //                                                     200]!),
                  //                                       ),
                  //                                     ),
                  //                                   ),
                  //                                   menuProps: const MenuProps(
                  //                                     backgroundColor:
                  //                                         Colors.white,
                  //                                   )),
                  //                               dropdownDecoratorProps:
                  //                                   const DropDownDecoratorProps(
                  //                                 dropdownSearchDecoration:
                  //                                     InputDecoration(
                  //                                         border:
                  //                                             InputBorder.none),
                  //                               ),
                  //                               items: routes,
                  //                               selectedItem: routes[0],
                  //                               itemAsString:
                  //                                   (CuSInsRotList u) =>
                  //                                       u.rotName ?? '',
                  //                               onChanged:
                  //                                   (CuSInsRotList? data) {
                  //                                 _routeIDCtrl.text =
                  //                                     data!.rotId!;
                  //                                 pagecounter = 1;
                  //                                 if (data.rotId! != '-1' ||
                  //                                     data.rotId!.isNotEmpty) {
                  //                                   context
                  //                                       .read<
                  //                                           CustomersListBlocBloc>()
                  //                                       .add(
                  //                                           const ClearCustomersEvent());
                  //                                   context
                  //                                       .read<
                  //                                           CustomersListBlocBloc>()
                  //                                       .add(
                  //                                           GetCustomersEvent(
                  //                                               userId: widget
                  //                                                       .user
                  //                                                       .usrId ??
                  //                                                   '',
                  //                                               area: '',
                  //                                               subarea: '',
                  //                                               route:
                  //                                                   data.rotId!,
                  //                                               searchQuery: '',
                  //                                               pagenum: pagecounter
                  //                                                   .toString()));
                  //                                   context
                  //                                       .read<
                  //                                           CusInsCustomersCountBloc>()
                  //                                       .add(GetCustomersCountEvent(
                  //                                           userId: widget.user
                  //                                                   .usrId ??
                  //                                               '',
                  //                                           area: '',
                  //                                           subarea: '',
                  //                                           route: data.rotId!,
                  //                                           searchString: '',
                  //                                           pagenum: pagecounter
                  //                                               .toString()));
                  //                                 } else if (data.rotId! ==
                  //                                         '-1' ||
                  //                                     data.rotId!.isEmpty) {
                  //                                   context
                  //                                       .read<
                  //                                           CustomersListBlocBloc>()
                  //                                       .add(
                  //                                           const ClearCustomersEvent());
                  //                                   context
                  //                                       .read<
                  //                                           CustomersListBlocBloc>()
                  //                                       .add(
                  //                                           GetCustomersEvent(
                  //                                               userId: widget
                  //                                                       .user
                  //                                                       .usrId ??
                  //                                                   '',
                  //                                               area: '',
                  //                                               subarea: '',
                  //                                               route: '',
                  //                                               searchQuery: '',
                  //                                               pagenum: pagecounter
                  //                                                   .toString()));
                  //                                   context
                  //                                       .read<
                  //                                           CusInsCustomersCountBloc>()
                  //                                       .add(GetCustomersCountEvent(
                  //                                           userId: widget.user
                  //                                                   .usrId ??
                  //                                               '',
                  //                                           area: '',
                  //                                           subarea: '',
                  //                                           route: '',
                  //                                           searchString: '',
                  //                                           pagenum: pagecounter
                  //                                               .toString()));
                  //                                 }
                  //                               },
                  //                             ),
                  //                           ),
                  //                         )),
                  //                   ),
                  //             getAllRoutesFailedState: () => Padding(
                  //               padding:
                  //                   const EdgeInsets.symmetric(vertical: 10),
                  //               child: Center(
                  //                 child: Text(
                  //                   AppLocalizations.of(context)!
                  //                       .noRoutesAvailable,
                  //                   style: kfontstyle(),
                  //                 ),
                  //               ),
                  //             ),
                  //           );
                  //         },
                  //       ),
                  //     )
                  //   ],
                  // ),
                 
                  // Padding(
                  //   padding: const EdgeInsets.only(left: 10.0, right: 10),
                  //   child: Container(
                  //       height: 30.h,
                  //       decoration: BoxDecoration(
                  //           color: Colors.white,
                  //           border: Border.all(color: Colors.grey.shade200),
                  //           borderRadius: BorderRadius.circular(10.0),
                  //           boxShadow: const [
                  //             BoxShadow(
                  //                 // ignore: use_full_hex_values_for_flutter_colors
                  //                 color: Color(0xff00000050),
                  //                 blurRadius: 0.4,
                  //                 spreadRadius: 0.4)
                  //           ]),
                  //       child: TextFormField(
                  //         controller: _customerSearchCtrl,
                  //         onChanged: (value) {
                  //           if (debounce?.isActive ?? false) debounce!.cancel();
                  //           debounce = Timer(
                  //             const Duration(
                  //               milliseconds: 1500,
                  //             ),
                  //             () async {
                  //               /* if (_routeIDCtrl.text != '-1') {
                  //                 isSearchLoading = true;
                  //                 context
                  //                     .read<CustomerSearchLoadingCubit>()
                  //                     .addSearchLoadingEvent();
                  //                 context.read<CustomersListBlocBloc>().add(
                  //                     GetCustomersEvent(
                  //                         userId: widget.user.usrId ?? '',
                  //                         area: '',
                  //                         subarea: '',
                  //                         route: _routeIDCtrl.text,
                  //                         searchQuery: value.trim()));
                  //               } */
                  //               isSearchLoading = true;
                  //               context
                  //                   .read<CustomerSearchLoadingCubit>()
                  //                   .addSearchLoadingEvent();

                  //               context.read<CustomersListBlocBloc>().add(
                  //                   GetCustomersEvent(
                  //                       userId: widget.user.usrId ?? '',
                  //                       area: '',
                  //                       subarea: '',
                  //                       route: _routeIDCtrl.text,
                  //                       searchQuery: value.trim(),
                  //                       pagenum: pagecounter.toString()));
                  //               context.read<CusInsCustomersCountBloc>().add(
                  //                   GetCustomersCountEvent(
                  //                       userId: widget.user.usrId ?? '',
                  //                       area: '',
                  //                       subarea: '',
                  //                       route: _routeIDCtrl.text,
                  //                       searchString: value.trim(),
                  //                       pagenum: pagecounter.toString()));
                  //             },
                  //           );
                  //         },
                  //         decoration: InputDecoration(
                  //             prefixIcon: const Icon(
                  //               Icons.search,
                  //               size: 20,
                  //             ),
                  //             suffix: Column(
                  //               mainAxisAlignment: MainAxisAlignment.center,
                  //               children: [
                  //                 SizedBox(height: 5.h),
                  //                 Expanded(
                  //                   child: IconButton(
                  //                     onPressed: () {
                  //                       // if (_routeIDCtrl.text != '-1') {
                  //                       _customerSearchCtrl.clear();
                  //                       isSearchLoading = true;
                  //                       context
                  //                           .read<CustomerSearchLoadingCubit>()
                  //                           .addSearchLoadingEvent();

                  //                       context
                  //                           .read<CustomersListBlocBloc>()
                  //                           .add(GetCustomersEvent(
                  //                               userId: widget.user.usrId ?? '',
                  //                               area: '',
                  //                               subarea: '',
                  //                               route: _routeIDCtrl.text,
                  //                               searchQuery: '',
                  //                               pagenum:
                  //                                   pagecounter.toString()));
                  //                       context
                  //                           .read<CusInsCustomersCountBloc>()
                  //                           .add(GetCustomersCountEvent(
                  //                               userId: widget.user.usrId ?? '',
                  //                               area: '',
                  //                               subarea: '',
                  //                               route: _routeIDCtrl.text,
                  //                               searchString: '',
                  //                               pagenum:
                  //                                   pagecounter.toString()));
                  //                     },
                  //                     icon: Icon(
                  //                       Icons.close,
                  //                       size: 13.sp,
                  //                     ),
                  //                   ),
                  //                 ),
                  //               ],
                  //             ),
                  //             hintText:
                  //                 AppLocalizations.of(context)!.searchHere,
                  //             hintStyle: kfontstyle(
                  //                 fontSize: 14,
                  //                 color: Colors.grey,
                  //                 fontWeight: FontWeight.normal),
                  //             isDense: true,
                  //             counterText: "",
                  //             contentPadding: const EdgeInsets.all(15.0),
                  //             filled: true,
                  //             fillColor: Colors.white,
                  //             border: OutlineInputBorder(
                  //                 borderRadius: BorderRadius.circular(10.0),
                  //                 borderSide: BorderSide.none)),
                  //         textAlign: TextAlign.start,
                  //         maxLines: 1,
                  //         maxLength: 20,
                  //         // controller: _locationNameTextController,
                  //       )),
                  // ),
                 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //SizedBox(width: 05,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
                        child: Text(
                          AppLocalizations.of(context)!.customers,
                          style: countHeading(),
                        ),
                      ),
                      BlocListener<CustomersListBlocBloc,
                          CustomersListBlocState>(
                        listener: (context, state) {
                          state.when(
                              getCustomersSstate: (customers, isLoading) {
                            if (isSearchLoading == true) {
                              isSearchLoading = false;
                              context
                                  .read<CustomerSearchLoadingCubit>()
                                  .removeLoadingEvent();
                            }
                          });
                        },
                        child: BlocBuilder<CusInsCustomersCountBloc,
                            CusInsCustomersCountState>(
                          builder: (context, state) {
                            return state.when(
                              getCustomersCountState: (counts) => counts == null
                                  ? Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20.0),
                                      child: Text(
                                        "0",
                                        style: countHeading(),
                                      ),
                                    )
                                  : Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20.0),
                                      child: Text(
                                        counts.totalCount ?? '',
                                        style: countHeading(),
                                      ),
                                    ),
                              getCustomersCountFailedState: () => Text(
                                '0',
                                style: countHeading(),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                             
                  BlocBuilder<CustomersListBlocBloc, CustomersListBlocState>(
                    builder: (context, state) {
                      return SizedBox(
                          // height: MediaQuery.of(context).size.height,
                          child: CustomersListingWidget(
                        user: widget.user,
                        scrollctrl: customersscrollController,
                      ));
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}




class CustomersHeaderSection extends StatelessWidget {
   final LoginUserModel user;
  final TextEditingController searchController;
  final VoidCallback? onClear;
  final ValueChanged<String>? onChanged;

  const CustomersHeaderSection({
    super.key,
    required this.searchController,
    this.onClear,
    this.onChanged, required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return 
    Container(
      //height: 200,
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(16.w, 16.h, 16.w, 20.h),
      decoration: BoxDecoration(
       // border: Border.all(color: Color(0xffE5E7EB)),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(16.r),
          bottomRight: Radius.circular(16.r),
        ),
         boxShadow: [
      BoxShadow(
        color: Color(0x40B8B8B8), // #B8B8B840 (last 2 digits = opacity)
        offset: Offset(0, 8),     // x = 0, y = 8
        blurRadius: 15.2,         // blur
        spreadRadius: 0,          // spread
      ),
    ],
        image: const DecorationImage(
          image: AssetImage('assets/images/home/home_bg2.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Row(
              children: [
                // replace with your real logo asset
                Container(
                  width: 22.w,
                  height: 22.w,
                  decoration: BoxDecoration(
                   
                    borderRadius: BorderRadius.circular(6.r),
                  ),
                  child: HomePopUPMenuButton(
                          user: user,
                        ),
                ),
                SizedBox(width: 10.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                          "assets/svg/logo_ccsfa.svg",
                          height: 22.sp,
                        ),
                  ],
                ),
                const Spacer(),
                IconButton(
                onPressed: () async {
                              Navigator.push(
                                  context,
                                  Platform.isIOS
                                      ? CupertinoPageRoute(
                                          builder: (context) =>
                                              NotificationScreen(
                                                  user: user))
                                      : MaterialPageRoute(
                                          builder: (context) =>
                                              NotificationScreen(
                                                  user: user),
                                        ));
                            
                            },
                 icon:
                                SvgPicture.asset("assets/svg/notification.svg"),
                  splashRadius: 20.r,
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10),
                    child: Container(
                        height: 35.h,
                        decoration: BoxDecoration(
                            color: Colors.white,
                           // border: Border.all(color: Colors.grey.shade200),
                            borderRadius: BorderRadius.circular(8.0),
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
                                milliseconds: 1500,
                              ),
                              () async {
                                /* if (_routeIDCtrl.text != '-1') {
                                  isSearchLoading = true;
                                  context
                                      .read<CustomerSearchLoadingCubit>()
                                      .addSearchLoadingEvent();
                                  context.read<CustomersListBlocBloc>().add(
                                      GetCustomersEvent(
                                          userId: widget.user.usrId ?? '',
                                          area: '',
                                          subarea: '',
                                          route: _routeIDCtrl.text,
                                          searchQuery: value.trim()));
                                } */
                                isSearchLoading = true;
                                context
                                    .read<CustomerSearchLoadingCubit>()
                                    .addSearchLoadingEvent();

                                context.read<CustomersListBlocBloc>().add(
                                    GetCustomersEvent(
                                        userId: "1174",//user.usrId ?? '',
                                        area: '',
                                        subarea: '',
                                        route: _routeIDCtrl.text,
                                        searchQuery: value.trim(),
                                        pagenum: pagecounter.toString()));
                                context.read<CusInsCustomersCountBloc>().add(
                                    GetCustomersCountEvent(
                                         userId: "1174",//user.usrId ?? '',
                                        area: '',
                                        subarea: '',
                                        route: _routeIDCtrl.text,
                                        searchString: value.trim(),
                                        pagenum: pagecounter.toString()));
                              },
                            );
                          },
                          decoration: InputDecoration(
                              prefixIcon: const Icon(
                                Icons.search,
                                size: 20,
                                color: Color(0xff9CA3AF),
                              ),
                              suffix: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: 5.h),
                                  Expanded(
                                    child: IconButton(
                                      onPressed: () {
                                        // if (_routeIDCtrl.text != '-1') {
                                        _customerSearchCtrl.clear();
                                        isSearchLoading = true;
                                        context
                                            .read<CustomerSearchLoadingCubit>()
                                            .addSearchLoadingEvent();

                                        context
                                            .read<CustomersListBlocBloc>()
                                            .add(GetCustomersEvent(
                                                userId: "1174",//user.usrId ?? '',
                                                area: '',
                                                subarea: '',
                                                route: _routeIDCtrl.text,
                                                searchQuery: '',
                                                pagenum:
                                                    pagecounter.toString()));
                                        context
                                            .read<CusInsCustomersCountBloc>()
                                            .add(GetCustomersCountEvent(
                                                userId: "1174",//user.usrId ?? '',
                                                area: '',
                                                subarea: '',
                                                route: _routeIDCtrl.text,
                                                searchString: '',
                                                pagenum:
                                                    pagecounter.toString()));
                                      },
                                      icon: Icon(
                                        Icons.close,
                                        size: 14.sp,
                                        color: Color(0xffF55858),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              hintText:
                                  AppLocalizations.of(context)!.searchcustomers,
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
        
         
          ],
        ),
      ),
    );
  
  }
}