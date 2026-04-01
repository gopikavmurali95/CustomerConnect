import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/cubit/custombottomnavcubit/custom_bottom_nav_cubit.dart';
import 'package:customer_connect/feature/view/HomeScreen/homscreen.dart';
import 'package:customer_connect/feature/view/approvals/approvalscreen.dart';
import 'package:customer_connect/feature/view/customerinsights/customersscreen.dart';
import 'package:customer_connect/feature/view/moremenu/moremenu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreenFooter extends StatelessWidget {
  final LoginUserModel user;
  const HomeScreenFooter({super.key, required this.user});

  List<Widget> get widgetOptions => [
        HomeScreen(user: user),
        ApprovalScreen(user: user),
        CustomersScren(user: user),
        const MoreMenuWidget()
      ];

  @override
  Widget build(BuildContext context) {
    return HomeScreenFooterBody(
      widgetOptions: widgetOptions,
    );
  }
}

class HomeScreenFooterBody extends StatelessWidget {
  final List<Widget> widgetOptions;
  const HomeScreenFooterBody({super.key, required this.widgetOptions});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CustomBottomNavCubit, CustomBottomNavState>(
      builder: (context, state) {
        int selectedIndex = 1;
        if (state is CustombottomnavState) {
          selectedIndex = state.selectedbottomIndex;
        }

        return Scaffold(
            extendBody: true,
            backgroundColor: Colors.white, // const Color(0xfff4f4f4),
            body: Padding(
              padding:
                  const EdgeInsets.only(bottom: kBottomNavigationBarHeight),
              child: KeyedSubtree(
                key: ValueKey(selectedIndex),
                child: widgetOptions[selectedIndex],
              ),
            ),
            bottomNavigationBar: SafeArea(
              child: CustomBottomNavBar(
                selectedIndex: selectedIndex,
                onItemTapped: (index) {
                  context.read<CustomBottomNavCubit>().changeIndex(index);
                },
              ),
            ));
      },
    );
  }
}

class CustomBottomNavBar extends StatefulWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const CustomBottomNavBar({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  List<Widget> get navItems {
    return [
      Expanded(
        child: _buildNavItem(
          imageAsset: 'assets/svg/div.svg',
          selectedImageAsset: 'assets/svg/homeselected.svg',
          index: 0,
          key: const ValueKey('nav_home'),
        ),
      ),
      Expanded(
        child: _buildNavItem(
          imageAsset: 'assets/svg/div (1).svg',
          selectedImageAsset: 'assets/svg/approvalselected.svg',
          index: 1,
          key: const ValueKey('nav_approvals'),
        ),
      ),
      Expanded(
        child: _buildNavItem(
          imageAsset: 'assets/svg/div (2).svg',
          selectedImageAsset: 'assets/svg/customerselected.svg',
          index: 2,
          key: const ValueKey('nav_customers'),
        ),
      ),
      Expanded(
        child: _buildNavItem(
          imageAsset: 'assets/svg/menu-2_svgrepo.com.svg',
          selectedImageAsset: 'assets/svg/moremenuselected.svg',
          index: 3,
          key: const ValueKey('nav_moremenu'),
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Container(
                height: 65,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: const Color(0xffE2E8F0),
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x40000000),
                      blurRadius: 50,
                      offset: Offset(0, 25),
                      spreadRadius: -12,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: navItems,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem({
    required String imageAsset,
    required String selectedImageAsset,
    required int index,
    Key? key,
  }) {
    {
      String getLabel(int index) {
        switch (index) {
          case 0:
            return "Home";
          case 1:
            return 'Approvals';

          case 2:
            return 'Customers';

          case 3:
            return 'More Menu';

          default:
            return '';
        }
      }

      return GestureDetector(
        key: key,
        onTap: () => widget.onItemTapped(index),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 180),
          curve: Curves.easeOut,
          width: 94,
          height: 54,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            gradient: widget.selectedIndex == index
                ? const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xFF314158),
                      Color(0xFF1D293D),
                      Color(0xFF0F172B),
                    ],
                    stops: [0, 0.5, 1],
                  )
                : null,
            color: widget.selectedIndex == index ? null : Colors.transparent,
            boxShadow: widget.selectedIndex == index
                ? const [
                    BoxShadow(
                      color: Color(0x1A000000),
                      offset: Offset(0, 4),
                      blurRadius: 6,
                      spreadRadius: -4,
                    ),
                    BoxShadow(
                      color: Color(0x1A000000),
                      offset: Offset(0, 10),
                      blurRadius: 15,
                      spreadRadius: -3,
                    ),
                  ]
                : null,
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 5.2, left: 6.2, right: 6.2),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  widget.selectedIndex == index
                      ? selectedImageAsset
                      : imageAsset,
                  width: 24,
                  height: 24,
                ),
                const SizedBox(height: 4),
                Text(
                  getLabel(index),
                  style: ifontstyle(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0,
                    color: widget.selectedIndex == index
                        ? Colors.white
                        : const Color(0xff62748E),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
  }
}
