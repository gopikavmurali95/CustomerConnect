import 'dart:async';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/data/models/special_price_header_model/special_price_header_model.dart';
import 'package:customer_connect/feature/state/bloc/special_price_header/special_price_header_bloc.dart';
import 'package:customer_connect/feature/view/SpecialPricing/Widgets/spheaderlist.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SpecialPricingHeader extends StatefulWidget {
  final LoginUserModel user;
  const SpecialPricingHeader({super.key, required this.user});

  @override
  State<SpecialPricingHeader> createState() => _SpecialPricingHeaderState();
}

final _spPriceSearchCtrl = TextEditingController();
Timer? debounce;

class _SpecialPricingHeaderState extends State<SpecialPricingHeader> {
  @override
  void initState() {
    _spPriceSearchCtrl.clear();
    super.initState();
  }

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
            size: 20,
          ),
        ),
        title: Text(
          "Special Pricing",
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
        bottom: PreferredSize(
          preferredSize: const Size(100, 40),
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15),
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
                          spreadRadius: 0.2)
                    ]),
                child: TextFormField(
                  controller: _spPriceSearchCtrl,
                  onChanged: (value) {
                    if (debounce?.isActive ?? false) debounce!.cancel();
                    debounce = Timer(
                      const Duration(
                        milliseconds: 500,
                      ),
                      () async {
                        context
                            .read<SpecialPriceHeaderBloc>()
                            .add(const ClearSpecialPriceEvent());
                        context.read<SpecialPriceHeaderBloc>().add(
                            GetSpecialPriceHeaderEvent(
                                spPriceInparas: SpecialPriceHeaderModel(
                                    area: '',
                                    customer: '',
                                    fromDate: '01-01-2023',
                                    mode: '',
                                    outlet: '',
                                    route: '',
                                    subArea: '',
                                    toDate: '01-05-2024',
                                    userId: widget.user.usrId),
                                searchQuery: value.trim()));
                      },
                    );
                  },
                  decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.search,
                        size: 20,
                      ),
                      suffix: InkWell(
                        onTap: () {
                          _spPriceSearchCtrl.clear();
                          context
                              .read<SpecialPriceHeaderBloc>()
                              .add(const ClearSpecialPriceEvent());
                          context.read<SpecialPriceHeaderBloc>().add(
                              GetSpecialPriceHeaderEvent(
                                  spPriceInparas: SpecialPriceHeaderModel(
                                      area: '',
                                      customer: '',
                                      fromDate: '01-01-2023',
                                      mode: '',
                                      outlet: '',
                                      route: '',
                                      subArea: '',
                                      toDate: '01-05-2024',
                                      userId: widget.user.usrId),
                                  searchQuery: ''));
                        },
                        child: const Icon(
                          Icons.close,
                          size: 14,
                        ),
                      ),
                      hintText: "Search promotions",
                      hintStyle: const TextStyle(
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
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //SizedBox(width: 05,),
              Padding(
                padding: const EdgeInsets.only(
                    left: 25.0, right: 20, top: 10, bottom: 10),
                child: Text(
                  "All",
                  style: countHeading(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20, top: 10, bottom: 10),
                child: BlocBuilder<SpecialPriceHeaderBloc,
                    SpecialPriceHeaderState>(
                  builder: (context, state) {
                    return state.when(
                      getSpecialPriceHeaderState: (spPrice) => spPrice == null
                          ? const SizedBox()
                          : Text(
                              spPrice.length.toString(),
                              style: countHeading(),
                            ),
                      speciaPriceHeaderFailedState: () => const Text('0'),
                    );
                  },
                ),
              ),
              // SizedBox(width: ,),
            ],
          ),
          SpPrHeaderList(
            user: widget.user,
          ),
        ],
      ),
    );
  }
}
