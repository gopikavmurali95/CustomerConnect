import 'dart:io';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/data/models/picking_and_loadin_counts_model/picking_and_loadin_counts_model.dart';
import 'package:customer_connect/feature/state/bloc/customersettings/customer_settings_bloc.dart';
import 'package:customer_connect/feature/state/bloc/picking_and_loading_count/picking_and_loading_count_bloc.dart';
import 'package:customer_connect/feature/view/PickingHeader/pick_completed.dart';
import 'package:customer_connect/feature/view/PickingHeader/pick_not_started_header.dart';
import 'package:customer_connect/feature/view/PickingHeader/pick_ongoing.dart';
import 'package:customer_connect/feature/view/load/load_completed.dart';
import 'package:customer_connect/feature/view/load/load_pending.dart';
import 'package:customer_connect/feature/view/load/load_rejected.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:customer_connect/l10n/app_localizations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

/// Non-expandable inventory card: Picking / Load In counts with the same
/// navigation targets as [PickingWidget], gated by customer settings.
class InventoryTransactionContainerWidget extends StatefulWidget {
  const InventoryTransactionContainerWidget({super.key, required this.user});

  final LoginUserModel user;

  @override
  State<InventoryTransactionContainerWidget> createState() =>
      _InventoryTransactionContainerWidgetState();
}

class _InventoryTransactionContainerWidgetState
    extends State<InventoryTransactionContainerWidget> {
  static const Color _titleColor = Color(0xFF101828);
  static const Color _toggleTrack = Color(0xFFF2F4F7);
  static const Color _selectedBlue = Color(0xFF2C6B9E);

  /// 0 = Picking, 1 = Load In (only used when both modules are enabled).
  int _segmentIndex = 0;

  late final PageController _tabPageController;

  static const Duration _tabAnimDuration = Duration(milliseconds: 350);

  @override
  void initState() {
    super.initState();
    _tabPageController = PageController(initialPage: _segmentIndex);
  }

  @override
  void dispose() {
    _tabPageController.dispose();
    super.dispose();
  }

  void _onSegmentSelected(int i) {
    if (_segmentIndex == i) return;
    setState(() => _segmentIndex = i);
    _tabPageController.animateToPage(
      i,
      duration: _tabAnimDuration,
      curve: Curves.easeInOutCubic,
    );
  }

  String _routesSubtitle(BuildContext context, String? route) {
    final r = route ?? '0';
    return '($r ${AppLocalizations.of(context)!.routes})';
  }

  void _navigatePickingNotStarted(BuildContext context) {
    Navigator.push(
      context,
      Platform.isIOS
          ? CupertinoPageRoute(
              builder: (context) => PickHeaderNotStarted(user: widget.user),
            )
          : MaterialPageRoute(
              builder: (context) => PickHeaderNotStarted(user: widget.user),
            ),
    );
  }

  void _navigatePickingOngoing(BuildContext context) {
    Navigator.push(
      context,
      Platform.isIOS
          ? CupertinoPageRoute(
              builder: (context) => PickHeaderOngoing(user: widget.user),
            )
          : MaterialPageRoute(
              builder: (context) => PickHeaderOngoing(user: widget.user),
            ),
    );
  }

  void _navigatePickingCompleted(BuildContext context) {
    Navigator.push(
      context,
      Platform.isIOS
          ? CupertinoPageRoute(
              builder: (context) => PickHeaderCompleted(user: widget.user),
            )
          : MaterialPageRoute(
              builder: (context) => PickHeaderCompleted(user: widget.user),
            ),
    );
  }

  void _navigateLoadPending(BuildContext context) {
    Navigator.push(
      context,
      Platform.isIOS
          ? CupertinoPageRoute(
              builder: (context) => LoadPending(user: widget.user),
            )
          : MaterialPageRoute(
              builder: (context) => LoadPending(user: widget.user),
            ),
    );
  }

  void _navigateLoadCompleted(BuildContext context) {
    Navigator.push(
      context,
      Platform.isIOS
          ? CupertinoPageRoute(
              builder: (context) => LoadCompleted(user: widget.user),
            )
          : MaterialPageRoute(
              builder: (context) => LoadCompleted(user: widget.user),
            ),
    );
  }

  void _navigateLoadRejected(BuildContext context) {
    Navigator.push(
      context,
      Platform.isIOS
          ? CupertinoPageRoute(
              builder: (context) => LoadRejected(user: widget.user),
            )
          : MaterialPageRoute(
              builder: (context) => LoadRejected(user: widget.user),
            ),
    );
  }

  PickingAndLoadinCountsModel _zeroCounts() {
    return PickingAndLoadinCountsModel(
      pickingNotStarted: '0',
      pickingNotStartedRoute: '0',
      pickingOngoing: '0',
      pickingOngoingRoute: '0',
      pickingCompleted: '0',
      pickingCompletedRoute: '0',
      loadInPending: '0',
      loadInPendingRoute: '0',
      loadInCompleted: '0',
      loadInCompletedRoute: '0',
      loadInCancelled: '0',
      loadInCancelledRoute: '0',
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CustomerSettingsBloc, CustomerSettingsState>(
      builder: (context, settingsState) {
        final pickingY = settingsState.when(
          getCustomerSettingsState: (s) => s?.picking == 'Y',
          customerSettingsFailedState: () => true,
        );
        final loadinY = settingsState.when(
          getCustomerSettingsState: (s) => s?.loadin == 'Y',
          customerSettingsFailedState: () => true,
        );

        if (!pickingY && !loadinY) {
          return const SizedBox.shrink();
        }

        final showToggle = pickingY && loadinY;
        final mode = showToggle
            ? _segmentIndex
            : (pickingY
                ? 0
                : loadinY
                    ? 1
                    : 0);

        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          child: BlocBuilder<PickingAndLoadingCountBloc,
              PickingAndLoadingCountState>(
            builder: (context, plState) {
              return plState.when(
                plCountSuccessState: (count) {
                  if (count == null) {
                    return ShimmerContainers(
                      height: 220.h,
                      width: double.infinity,
                    );
                  }
                  return _buildCard(
                    context,
                    count: count,
                    pickingY: pickingY,
                    loadinY: loadinY,
                    showToggle: showToggle,
                    mode: mode,
                  );
                },
                plCountFailedState: () => _buildCard(
                  context,
                  count: _zeroCounts(),
                  pickingY: pickingY,
                  loadinY: loadinY,
                  showToggle: showToggle,
                  mode: mode,
                ),
              );
            },
          ),
        );
      },
    );
  }

  Widget _buildCard(
    BuildContext context, {
    required PickingAndLoadinCountsModel count,
    required bool pickingY,
    required bool loadinY,
    required bool showToggle,
    required int mode,
  }) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: Colors.white,
        border: Border.all(
          color: const Color(0xFFE2E8F0),
          width: 1,
        ),
        boxShadow: const [
          BoxShadow(
            color: Color(0x1A000000),
            offset: Offset(0, 1),
            blurRadius: 2,
            spreadRadius: -1,
          ),
          BoxShadow(
            color: Color(0x1A000000),
            offset: Offset(0, 1),
            blurRadius: 3,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Inventory Transactions",
              style: pfontstyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: const Color(0xff0F172B),
              ),
            ),
          ),
          if (showToggle) ...[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: _SegmentedToggle(
                selectedIndex: mode,
                onChanged: _onSegmentSelected,
                selectedBlue: _selectedBlue,
                trackColor: _toggleTrack,
              ),
            ),
          ],
          SizedBox(height: 16.h),
          if (showToggle)
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: SizedBox(
                height: 200.h, // height of the big container
                child: PageView(
                  controller: _tabPageController,
                  physics: const BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics(),
                  ),
                  onPageChanged: (i) {
                    if (_segmentIndex != i) {
                      setState(() => _segmentIndex = i);
                    }
                  },
                  children: [
                    _buildPickingContent(context, count),
                    _buildLoadInContent(context, count),
                  ],
                ),
              ),
            )
          else ...[
            if (pickingY) _buildPickingContent(context, count),
            if (loadinY) _buildLoadInContent(context, count),
          ],
        ],
      ),
    );
  }

  Widget _buildPickingContent(
      BuildContext context, PickingAndLoadinCountsModel count) {
    final loc = AppLocalizations.of(context)!;
    return Align(
      alignment: Alignment.topCenter,
      child: Column(
        key: const PageStorageKey<String>('inv_picking'),
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          _InventoryStatusCard(
            title: loc.pending,
            subtitle: _routesSubtitle(context, count.pickingNotStartedRoute),
            count: count.pickingNotStarted ?? '0',
            backgroundColor: const Color(0xFFF8F9FB),
            borderColor: const Color(0xFFE4E7EC),
            countColor: _titleColor,
            onTap: () => _navigatePickingNotStarted(context),
          ),
          SizedBox(height: 12.h),
          _InventoryStatusCard(
            title: loc.completed,
            subtitle: _routesSubtitle(context, count.pickingCompletedRoute),
            count: count.pickingCompleted ?? '0',
            backgroundColor: const Color(0xFFF0FDF4),
            borderColor: const Color(0xFFBBF7D0),
            countColor: const Color(0xFF16A34A),
            onTap: () => _navigatePickingCompleted(context),
          ),
          SizedBox(height: 12.h),
          _InventoryStatusCard(
            title: loc.ongoing,
            subtitle: _routesSubtitle(context, count.pickingOngoingRoute),
            count: count.pickingOngoing ?? '0',
            backgroundColor: const Color(0xFFEFF6FF),
            borderColor: const Color(0xFFC7E0F4),
            countColor: _selectedBlue,
            onTap: () => _navigatePickingOngoing(context),
          ),
        ],
      ),
    );
  }

  Widget _buildLoadInContent(
      BuildContext context, PickingAndLoadinCountsModel count) {
    final loc = AppLocalizations.of(context)!;
    return Align(
      alignment: Alignment.topCenter,
      child: Column(
        key: const PageStorageKey<String>('inv_loadin'),
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          _InventoryStatusCard(
            title: loc.pending,
            subtitle: _routesSubtitle(context, count.loadInPendingRoute),
            count: count.loadInPending ?? '0',
            backgroundColor: const Color(0xFFF8F9FB),
            borderColor: const Color(0xFFE4E7EC),
            countColor: _titleColor,
            onTap: () => _navigateLoadPending(context),
          ),
          SizedBox(height: 12.h),
          _InventoryStatusCard(
            title: loc.completed,
            subtitle: _routesSubtitle(context, count.loadInCompletedRoute),
            count: count.loadInCompleted ?? '0',
            backgroundColor: const Color(0xFFF0FDF4),
            borderColor: const Color(0xFFBBF7D0),
            countColor: const Color(0xFF16A34A),
            onTap: () => _navigateLoadCompleted(context),
          ),
          SizedBox(height: 12.h),
          _InventoryStatusCard(
            title: loc.rejected,
            subtitle: _routesSubtitle(context, count.loadInCancelledRoute),
            count: count.loadInCancelled ?? '0',
            backgroundColor: const Color(0xFFFFF1F2),
            borderColor: const Color(0xFFFECDD3),
            countColor: const Color(0xFFE11D48),
            onTap: () => _navigateLoadRejected(context),
          ),
        ],
      ),
    );
  }
}

class _SegmentedToggle extends StatelessWidget {
  const _SegmentedToggle({
    required this.selectedIndex,
    required this.onChanged,
    required this.selectedBlue,
    required this.trackColor,
  });

  final int selectedIndex;
  final ValueChanged<int> onChanged;
  final Color selectedBlue;
  final Color trackColor;

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 0.r),
      decoration: BoxDecoration(
        color: trackColor,
        borderRadius: BorderRadius.circular(24.r),
      ),
      child: Row(
        children: [
          Expanded(
            child: _SegmentChip(
              label: loc.picking,
              selected: selectedIndex == 0,
              selectedBlue: selectedBlue,
              onTap: () => onChanged(0),
            ),
          ),
          Expanded(
            child: _SegmentChip(
              label: loc.load_in,
              selected: selectedIndex == 1,
              selectedBlue: selectedBlue,
              onTap: () => onChanged(1),
            ),
          ),
        ],
      ),
    );
  }
}

class _SegmentChip extends StatelessWidget {
  const _SegmentChip({
    required this.label,
    required this.selected,
    required this.selectedBlue,
    required this.onTap,
  });

  final String label;
  final bool selected;
  final Color selectedBlue;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(20.r),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeInOut,
          padding: EdgeInsets.symmetric(vertical: 10.h),
          decoration: BoxDecoration(
            color: selected ? selectedBlue : Colors.transparent,
            borderRadius: BorderRadius.circular(20.r),
          ),
          alignment: Alignment.center,
          child: Text(
            label,
            style: GoogleFonts.inter(
              fontSize: 13.sp,
              fontWeight: FontWeight.w600,
              color: selected ? Colors.white : const Color(0xFF101828),
            ),
          ),
        ),
      ),
    );
  }
}

class _InventoryStatusCard extends StatelessWidget {
  const _InventoryStatusCard({
    required this.title,
    required this.subtitle,
    required this.count,
    required this.backgroundColor,
    required this.borderColor,
    required this.countColor,
    required this.onTap,
  });

  final String title;
  final String subtitle;
  final String count;
  final Color backgroundColor;
  final Color borderColor;
  final Color countColor;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12.r),
        child: Ink(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(12.r),
            border: Border.all(color: borderColor),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: countHeading().copyWith(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      subtitle,
                      style: subTextStyle().copyWith(
                        fontSize: 10.sp,
                        color: const Color(0xFF667085),
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                count,
                style: GoogleFonts.inter(
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w700,
                  color: countColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
