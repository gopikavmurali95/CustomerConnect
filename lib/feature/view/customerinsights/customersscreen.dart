import 'dart:async';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/cu_s_ins_rot_list/cu_s_ins_rot_list.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/bloc/customers/customers_list_bloc_bloc.dart';
import 'package:customer_connect/feature/state/bloc/getallroutes/get_all_route_bloc.dart';
import 'package:customer_connect/feature/state/cubit/customersearch/customer_search_loading_cubit.dart';
import 'package:customer_connect/feature/view/customerinsights/widgets/customerlistingwidget.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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

class _CustomersScrenState extends State<CustomersScren> {
  @override
  void initState() {
    _customerSearchCtrl.clear();
    _routeIDCtrl.clear();

    context.read<GetAllRouteBloc>().add(const ClearAllRouteEvent());
    context.read<GetAllRouteBloc>().add(const GetAllRouteForCusEvent());
    context.read<CustomersListBlocBloc>().add(const RestCustomersEvent());

    super.initState();
  }

  Future<void> _onRefreshLoadin(BuildContext context) async {
    _customerSearchCtrl.clear();

    context.read<CustomersListBlocBloc>().add(const ClearCustomersEvent());

    context.read<CustomersListBlocBloc>().add(GetCustomersEvent(
        userId: widget.user.usrId ?? '',
        area: '',
        subarea: '',
        route: _routeIDCtrl.text,
        searchQuery: ''));
    await Future.delayed(const Duration(seconds: 2));
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
          "Customers ",
          style: appHeading(),
        ),
      ),
      body: RefreshIndicator(
        triggerMode: RefreshIndicatorTriggerMode.anywhere,
        color: const Color.fromARGB(255, 181, 218, 245),
        displacement: BorderSide.strokeAlignCenter,
        onRefresh: () => _onRefreshLoadin(context),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: BlocListener<CustomerSearchLoadingCubit,
                CustomerSearchLoadingState>(
              listener: (context, state) {
                state.when(
                  searchLoadingState: () {
                    showCupertinoDialog(
                        context: context,
                        builder: (context) => const PopScope(
                              canPop: false,
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
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          'Kindly select a route to view the customers',
                          style: kfontstyle(fontSize: 11.sp),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: BlocBuilder<GetAllRouteBloc, GetAllRouteState>(
                          builder: (context, state) {
                            return state.when(
                              getAllRoutesSuccessState: (routes) => routes ==
                                      null
                                  ? Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15, vertical: 10),
                                      child: ShimmerContainers(
                                          height: 40.h, width: double.infinity),
                                    )
                                  : Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15, vertical: 10),
                                      child: Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  color: Colors.grey.shade200),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              boxShadow: const [
                                                BoxShadow(
                                                    // ignore: use_full_hex_values_for_flutter_colors
                                                    color: Color(0xff00000050),
                                                    blurRadius: 0.4,
                                                    spreadRadius: 0.4)
                                              ]),
                                          child: /* DropdownButtonFormField(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10),
                                          dropdownColor: Colors.white,
                                          value: routes[0].rotId ?? '',
                                          style:
                                              kfontstyle(color: Colors.black),
                                          decoration: const InputDecoration(
                                            border: InputBorder.none,
                                          ),
                                          items:
                                              routes.map((CuSInsRotList item) {
                                            return DropdownMenuItem(
                                              value: item.rotId,
                                              child: Text(
                                                overflow: TextOverflow.ellipsis,
                                                item.rotName ?? '',
                                                style:
                                                    kfontstyle(fontSize: 11.sp),
                                              ),
                                            );
                                          }).toList(),
                                          onChanged: (value) {
                                            _routeIDCtrl.text = value!;
                                            log(value);

                                            if (value != '-1' ||
                                                value.isNotEmpty) {
                                              context
                                                  .read<CustomersListBlocBloc>()
                                                  .add(
                                                      const ClearCustomersEvent());
                                              context
                                                  .read<CustomersListBlocBloc>()
                                                  .add(GetCustomersEvent(
                                                      userId:
                                                          widget.user.usrId ??
                                                              '',
                                                      area: '',
                                                      subarea: '',
                                                      route: value,
                                                      searchQuery: ''));
                                            } else if (value == '-1' ||
                                                value.isEmpty) {
                                              // _routeIDCtrl.clear();

                                              context
                                                  .read<CustomersListBlocBloc>()
                                                  .add(
                                                      const RestCustomersEvent());
                                            }
                                          },
                                        ), */
                                              Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10),
                                            child: Theme(
                                              data: ThemeData(
                                                  canvasColor: Colors.white),
                                              child:
                                                  DropdownSearch<CuSInsRotList>(
                                                popupProps: PopupProps.menu(
                                                    showSearchBox: true,
                                                    searchFieldProps:
                                                        TextFieldProps(
                                                      showCursor: true,
                                                      decoration:
                                                          InputDecoration(
                                                        hintText:
                                                            'Search route',
                                                        hintStyle: kfontstyle(),
                                                        border:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                                  color: Colors
                                                                          .grey[
                                                                      200]!),
                                                        ),
                                                        focusedBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                                  color: Colors
                                                                          .grey[
                                                                      200]!),
                                                        ),
                                                        enabledBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                                  color: Colors
                                                                          .grey[
                                                                      200]!),
                                                        ),
                                                      ),
                                                    ),
                                                    menuProps: const MenuProps(
                                                      backgroundColor:
                                                          Colors.white,
                                                    )),
                                                dropdownDecoratorProps:
                                                    const DropDownDecoratorProps(
                                                  dropdownSearchDecoration:
                                                      InputDecoration(
                                                          border:
                                                              InputBorder.none),
                                                ),
                                                items: routes,
                                                // asyncItems: (String filter) =>
                                                //     getData(filter),
                                                selectedItem: routes[0],
                                                itemAsString:
                                                    (CuSInsRotList u) =>
                                                        u.rotName ?? '',
                                                onChanged:
                                                    (CuSInsRotList? data) {
                                                  _routeIDCtrl.text =
                                                      data!.rotId!;
                                                  // log/(value);

                                                  if (data.rotId! != '-1' ||
                                                      data.rotId!.isNotEmpty) {
                                                    context
                                                        .read<
                                                            CustomersListBlocBloc>()
                                                        .add(
                                                            const ClearCustomersEvent());
                                                    context
                                                        .read<
                                                            CustomersListBlocBloc>()
                                                        .add(
                                                            GetCustomersEvent(
                                                                userId: widget
                                                                        .user
                                                                        .usrId ??
                                                                    '',
                                                                area: '',
                                                                subarea: '',
                                                                route:
                                                                    data.rotId!,
                                                                searchQuery:
                                                                    ''));
                                                  } else if (data.rotId! ==
                                                          '-1' ||
                                                      data.rotId!.isEmpty) {
                                                    // _routeIDCtrl.clear();

                                                    context
                                                        .read<
                                                            CustomersListBlocBloc>()
                                                        .add(
                                                            const RestCustomersEvent());
                                                  }
                                                },
                                              ),
                                            ),
                                          )),
                                    ),
                              getAllRoutesFailedState: () => Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: Center(
                                  child: Text(
                                    'No routes available',
                                    style: kfontstyle(),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15),
                    child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.grey.shade200),
                            borderRadius: BorderRadius.circular(10.0),
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
                                if (_routeIDCtrl.text != '-1') {
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
                                }
                              },
                            );
                          },
                          decoration: InputDecoration(
                              prefixIcon: const Icon(
                                Icons.search,
                                size: 20,
                              ),
                              suffix: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: 5.h),
                                  Expanded(
                                    child: IconButton(
                                      onPressed: () {
                                        if (_routeIDCtrl.text != '-1') {
                                          _customerSearchCtrl.clear();
                                          isSearchLoading = true;
                                          context
                                              .read<
                                                  CustomerSearchLoadingCubit>()
                                              .addSearchLoadingEvent();
                                          context
                                              .read<CustomersListBlocBloc>()
                                              .add(GetCustomersEvent(
                                                  userId:
                                                      widget.user.usrId ?? '',
                                                  area: '',
                                                  subarea: '',
                                                  route: _routeIDCtrl.text,
                                                  searchQuery: ''));
                                        }
                                      },
                                      icon: Icon(
                                        Icons.close,
                                        size: 13.sp,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              hintText: "Search here..",
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //SizedBox(width: 05,),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, right: 20, top: 5),
                        child: Text(
                          "Customers",
                          style: countHeading(),
                        ),
                      ),
                      BlocListener<CustomersListBlocBloc,
                          CustomersListBlocState>(
                        listener: (context, state) {
                          state.when(
                            customersResetState: () {},
                            getCustomersSstate: (customers) {
                              if (isSearchLoading == true) {
                                isSearchLoading = false;
                                context
                                    .read<CustomerSearchLoadingCubit>()
                                    .removeLoadingEvent();
                              }
                            },
                            getcustomersFailedState: () {},
                          );
                        },
                        child: BlocBuilder<CustomersListBlocBloc,
                            CustomersListBlocState>(
                          builder: (context, state) {
                            return state.when(
                              customersResetState: () => Padding(
                                padding: const EdgeInsets.only(
                                    left: 20.0, right: 20, top: 5),
                                child: Text(
                                  "0",
                                  style: countHeading(),
                                ),
                              ),
                              getCustomersSstate: (customers) =>
                                  customers == null
                                      ? Padding(
                                          padding: const EdgeInsets.only(
                                              left: 20.0, right: 20, top: 5),
                                          child: Text(
                                            "0",
                                            style: countHeading(),
                                          ),
                                        )
                                      : Padding(
                                          padding: const EdgeInsets.only(
                                              left: 20.0, right: 20, top: 10),
                                          child: Text(
                                            "${customers.length}",
                                            style: countHeading(),
                                          ),
                                        ),
                              getcustomersFailedState: () => Padding(
                                padding: const EdgeInsets.only(
                                    left: 20.0, right: 20, top: 10),
                                child: Text(
                                  "0",
                                  style: countHeading(),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      // SizedBox(width: ,),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),

                  //removed media query
                  BlocBuilder<CustomersListBlocBloc, CustomersListBlocState>(
                    builder: (context, state) {
                      return SizedBox(
                          // height: MediaQuery.of(context).size.height,
                          child: CustomersListingWidget(
                        user: widget.user,
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
