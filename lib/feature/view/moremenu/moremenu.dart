import 'package:customer_connect/constants/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MoreMenuWidget extends StatelessWidget {
  static const double _menuCardWidth = 112.56128692626953;
  static const double _menuCardHeight = 99.98487854003906;

  final bool isBottomSheet;

  const MoreMenuWidget({super.key, this.isBottomSheet = false});

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
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (isBottomSheet) ...<Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Center(
                    child: SvgPicture.asset('assets/svg/Container.svg'),
                  ),
                ),
              ],
              GridView.builder(
                itemCount: menuItems.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: _menuCardWidth / _menuCardHeight,
                ),
                itemBuilder: (BuildContext context, int index) {
                  final _MoreMenuItemData item = menuItems[index];
                  return _MoreMenuCard(item: item);
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

  const _MoreMenuCard({required this.item});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(16),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () {},
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
                  style:  ifontstyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF334155),
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
