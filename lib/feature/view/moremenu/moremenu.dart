import 'dart:io';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/view/SpecialPricing/specialpricingheader.dart';
import 'package:customer_connect/feature/view/activityreview/activityreviewheader.dart';
import 'package:customer_connect/feature/view/merchandising/merchandising.dart';
import 'package:customer_connect/feature/view/outstanding/outstandingheader.dart';
import 'package:customer_connect/feature/view/promotions/promotionsheader.dart';
import 'package:customer_connect/feature/view/target/targetheaderscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MoreMenuWidget extends StatelessWidget {
  static const double _menuCardWidth = 112.56128692626953;
  static const double _menuCardHeight = 99.98487854003906;

  final LoginUserModel user;
  final bool isBottomSheet;
  final VoidCallback? onItemSelected;

  const MoreMenuWidget({
    super.key,
    required this.user,
    this.isBottomSheet = false,
    this.onItemSelected,
  });

  Route<dynamic> _buildRoute(Widget page) {
    return Platform.isIOS
        ? CupertinoPageRoute(builder: (context) => page)
        : MaterialPageRoute(builder: (context) => page);
  }

  void _handleMenuTap(BuildContext context, String title) {
    onItemSelected?.call();

    switch (title) {
      case 'Promotions':
        Navigator.push(
          context,
          _buildRoute(PromotionHeader(user: user)),
        );
        break;
      case 'Special Price':
        Navigator.push(
          context,
          _buildRoute(SpecialPricingHeader(user: user)),
        );
        break;
      case 'Outstanding':
        Navigator.push(
          context,
          _buildRoute(
            OutstandingHeaderScreen(isfromUser: false, user: user),
          ),
        );
        break;
      case 'Target':
        Navigator.push(
          context,
          _buildRoute(const TargetHeaderScreen()),
        );
        break;
      case 'Merchandising':
        Navigator.push(
          context,
          _buildRoute(const MerchandisingScreen()),
        );
        break;
      case 'Activity Review':
        Navigator.push(
          context,
          _buildRoute(const ActivityReviewHeaderScreen()),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    final List<_MoreMenuItemData> menuItems = <_MoreMenuItemData>[
      const _MoreMenuItemData(
        title: 'Promotions',
        imagePath: 'assets/images/pro.png',
      ),
      const _MoreMenuItemData(
        title: 'Special Price',
        imagePath: 'assets/images/file.png',
      ),
      const _MoreMenuItemData(
        title: 'Outstanding',
        imagePath: 'assets/images/outs.png',
      ),
      const _MoreMenuItemData(
        title: 'Target',
        imagePath: 'assets/images/home/target@2x.png',
      ),
      const _MoreMenuItemData(
        title: 'Merchandising',
        imagePath: 'assets/images/home/mer@2x.png',
      ),
      const _MoreMenuItemData(
        title: 'Activity Review',
        imagePath: 'assets/images/os.png',
      ),
    ];

    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: SafeArea(
        top: !isBottomSheet,
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 32),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (isBottomSheet) ...<Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 16, top: 16),
                  child: Center(
                    child: SvgPicture.asset('assets/svg/Container.svg'),
                  ),
                ),
              ],
              GridView.builder(
                itemCount: menuItems.length,
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: _menuCardWidth / _menuCardHeight,
                ),
                itemBuilder: (BuildContext context, int index) {
                  final _MoreMenuItemData item = menuItems[index];
                  return _MoreMenuCard(
                    item: item,
                    onTap: () => _handleMenuTap(context, item.title),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _MoreMenuCard extends StatelessWidget {
  final _MoreMenuItemData item;
  final VoidCallback onTap;

  const _MoreMenuCard({required this.item, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(16),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: onTap,
        child: Ink(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: const Color(0xFFFFFFFF),
            border: Border.all(
              color: const Color(0xFFE5E7EB),
              width: 1,
            ),
            boxShadow: const <BoxShadow>[
              BoxShadow(
                color: Color(0x1A000000),
                offset: Offset(0, 1),
                blurRadius: 2,
                spreadRadius: -1,
                blurStyle: BlurStyle.outer,
              ),
              BoxShadow(
                color: Color(0x14000000),
                offset: Offset(0, 1),
                blurRadius: 3,
                spreadRadius: 0,
                blurStyle: BlurStyle.outer,
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8, 9, 8, 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  item.imagePath,
                  width: 24,
                  height: 24,
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 10),
                Text(
                  item.title,
                  textAlign: TextAlign.center,
                  style: ifontstyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xff364153),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _MoreMenuItemData {
  final String title;
  final String imagePath;

  const _MoreMenuItemData({
    required this.title,
    required this.imagePath,
  });
}
