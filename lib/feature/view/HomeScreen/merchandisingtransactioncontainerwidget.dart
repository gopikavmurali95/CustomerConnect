import 'package:customer_connect/constants/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MerchandisingTransactionContainerWidget extends StatefulWidget {
  const MerchandisingTransactionContainerWidget({super.key});

  @override
  State<MerchandisingTransactionContainerWidget> createState() =>
      _MerchandisingTransactionContainerWidgetState();
}

class _MerchandisingTransactionContainerWidgetState
    extends State<MerchandisingTransactionContainerWidget> {
  final int _surveyCompleted = 4;
  final int _surveyTotal = 12;
  final int _surveyPending = 8;
  final int _assetsTracked = 4;
  final int _assetsTotal = 6;
  final int _tasksCompleted = 2;
  final int _tasksPending = 4;

  @override
  Widget build(BuildContext context) {
    final surveyRate =
        _surveyTotal == 0 ? 0.0 : _surveyCompleted / _surveyTotal;
    final assetsRate = _assetsTotal == 0 ? 0.0 : _assetsTracked / _assetsTotal;
    final taskTotal = _tasksCompleted + _tasksPending;
    final taskRate = taskTotal == 0 ? 0.0 : _tasksCompleted / taskTotal;

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 8.w,
      ),
      child: Container(
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
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 12.h),
              child: Row(
                children: [
                  Container(
                    height: 30.h,
                    width: 30.w,
                    decoration: BoxDecoration(
                      color: const Color(0xFFEDE9FE),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: const Icon(
                      Icons.shopping_bag_outlined,
                      color: Color(0xFF6366F1),
                      size: 16,
                    ),
                  ),
                  SizedBox(width: 8.w),
                  Text(
                    'Merchandising Transactions',
                    style: GoogleFonts.inter(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFF1D2939),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(height: 1, color: Color(0xFFE4E7EC)),
            Padding(
              padding: EdgeInsets.all(12.r),
              child: Column(
                children: [
                  _surveyCard(surveyRate),
                  SizedBox(height: 12.h),
                  _assetsCard(assetsRate),
                  SizedBox(height: 12.h),
                  _taskCard(taskRate),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _surveyCard(double surveyRate) {
    return Container(
      padding: EdgeInsets.all(12.r),
      decoration: _sectionDecoration(),
      child: Column(
        children: [
          Row(
            children: [
              const Icon(
                Icons.assignment_outlined,
                color: Color(0xFF4F46E5),
                size: 17,
              ),
              SizedBox(width: 6.w),
              Text(
                'Assigned Survey',
                style: countHeading()
                    .copyWith(fontWeight: FontWeight.w700, fontSize: 12.sp),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          Row(
            children: [
              SizedBox(
                height: 86.h,
                width: 86.w,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                      height: 86.h,
                      width: 86.w,
                      child: CircularProgressIndicator(
                        value: surveyRate,
                        strokeWidth: 8,
                        backgroundColor: const Color(0xFFE2E8F0),
                        valueColor: const AlwaysStoppedAnimation(
                          Color(0xFF6366F1),
                        ),
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          '$_surveyCompleted',
                          style: GoogleFonts.inter(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFF111827),
                          ),
                        ),
                        Text(
                          'of $_surveyTotal',
                          style: subTextStyle().copyWith(
                            color: const Color(0xFF94A3B8),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(width: 18.w),
              Expanded(
                child: Column(
                  children: [
                    _legendRow(
                        'Completed', _surveyCompleted, const Color(0xFF8B5CF6)),
                    SizedBox(height: 8.h),
                    _legendRow(
                        'Pending', _surveyPending, const Color(0xFFCBD5E1)),
                    SizedBox(height: 8.h),
                    const Divider(height: 1, color: Color(0xFFE2E8F0)),
                    SizedBox(height: 8.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Completion Rate',
                          style: countHeading().copyWith(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          '${(surveyRate * 100).toStringAsFixed(0)}%',
                          style: GoogleFonts.inter(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFF4F46E5),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _assetsCard(double assetsRate) {
    return Container(
      padding: EdgeInsets.all(12.r),
      decoration: _sectionDecoration(),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 46.h,
                width: 46.w,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xFF3B82F6), Color(0xFF2563EB)],
                  ),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child:
                    const Icon(Icons.fact_check_outlined, color: Colors.white),
              ),
              SizedBox(width: 10.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Assets Tracked',
                      style: countHeading().copyWith(
                        color: const Color(0xFF64748B),
                      ),
                    ),
                    Text(
                      '$_assetsTracked/$_assetsTotal',
                      style: GoogleFonts.inter(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xFF1E293B),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '${(assetsRate * 100).toStringAsFixed(0)}%',
                    style: GoogleFonts.inter(
                      fontSize: 22.sp,
                      fontWeight: FontWeight.w800,
                      color: const Color(0xFF2563EB),
                    ),
                  ),
                  Text(
                    'TRACKED',
                    style: countHeading().copyWith(
                      fontSize: 10.sp,
                      color: const Color(0xFF94A3B8),
                    ),
                  ),
                ],
              )
            ],
          ),
          SizedBox(height: 12.h),
          ClipRRect(
            borderRadius: BorderRadius.circular(999.r),
            child: LinearProgressIndicator(
              value: assetsRate,
              minHeight: 8.h,
              backgroundColor: const Color(0xFFDBEAFE),
              valueColor: const AlwaysStoppedAnimation(Color(0xFF3B82F6)),
            ),
          ),
        ],
      ),
    );
  }

  Widget _taskCard(double taskRate) {
    return Container(
      padding: EdgeInsets.all(12.r),
      decoration: _sectionDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.task_alt, color: Color(0xFFF97316), size: 18),
              SizedBox(width: 6.w),
              Text(
                'Tasks Status',
                style: countHeading().copyWith(fontWeight: FontWeight.w700),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          Row(
            children: [
              Expanded(
                child: _taskInfoCard(
                  title: 'Completed',
                  value: _tasksCompleted.toString(),
                  note: 'of ${_tasksCompleted + _tasksPending} tasks',
                  color: const Color(0xFF16A34A),
                  borderColor: const Color(0xFFBBF7D0),
                  icon: Icons.check_circle_outline,
                ),
              ),
              SizedBox(width: 10.w),
              Expanded(
                child: _taskInfoCard(
                  title: 'Pending',
                  value: _tasksPending.toString(),
                  note: 'remaining',
                  color: const Color(0xFFF59E0B),
                  borderColor: const Color(0xFFFDE68A),
                  icon: Icons.schedule,
                ),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Overall Progress',
                style: countHeading().copyWith(
                  color: const Color(0xFF64748B),
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                '${(taskRate * 100).toStringAsFixed(0)}%',
                style: GoogleFonts.inter(
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xFFF97316),
                ),
              ),
            ],
          ),
          SizedBox(height: 8.h),
          ClipRRect(
            borderRadius: BorderRadius.circular(999.r),
            child: LinearProgressIndicator(
              value: taskRate,
              minHeight: 8.h,
              backgroundColor: const Color(0xFFFFEDD5),
              valueColor: const AlwaysStoppedAnimation(Color(0xFFEA580C)),
            ),
          ),
        ],
      ),
    );
  }

  Widget _taskInfoCard({
    required String title,
    required String value,
    required String note,
    required Color color,
    required Color borderColor,
    required IconData icon,
  }) {
    return Container(
      padding: EdgeInsets.all(10.r),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: borderColor),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, size: 15, color: color),
              SizedBox(width: 5.w),
              Text(
                title,
                style: countHeading().copyWith(
                  fontSize: 13.sp,
                  color: const Color(0xFF64748B),
                ),
              ),
            ],
          ),
          SizedBox(height: 10.h),
          Text(
            value,
            style: GoogleFonts.inter(
              fontSize: 20.sp,
              fontWeight: FontWeight.w700,
              color: color,
            ),
          ),
          Text(
            note,
            style: subTextStyle().copyWith(
              fontSize: 11.sp,
              color: const Color(0xFF94A3B8),
            ),
          ),
        ],
      ),
    );
  }

  Widget _legendRow(String title, int count, Color dotColor) {
    return Row(
      children: [
        Container(
          height: 10.h,
          width: 10.w,
          decoration: BoxDecoration(color: dotColor, shape: BoxShape.circle),
        ),
        SizedBox(width: 6.w),
        Expanded(
          child: Text(
            title,
            style: countHeading().copyWith(
              color: const Color(0xFF64748B),
            ),
          ),
        ),
        Text(
          '$count',
          style: GoogleFonts.inter(
            fontSize: 16.sp,
            fontWeight: FontWeight.w700,
            color: const Color(0xFF111827),
          ),
        ),
      ],
    );
  }

  BoxDecoration _sectionDecoration() {
    return BoxDecoration(
      color: const Color(0xFFF8FAFC),
      borderRadius: BorderRadius.circular(14.r),
      border: Border.all(color: const Color(0xFFE2E8F0)),
    );
  }
}
