import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomProgressBar extends StatefulWidget {
  final double targetAmount;
  final double achievedAmount;
  final LinearGradient colors;

  const CustomProgressBar(
      {super.key,
      required this.targetAmount,
      required this.achievedAmount,
      required this.colors});

  @override
  // ignore: library_private_types_in_public_api
  _CustomProgressBarState createState() => _CustomProgressBarState();
}

class _CustomProgressBarState extends State<CustomProgressBar>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _animation = Tween<double>(
      begin: 0.0,
      end: widget.achievedAmount / widget.targetAmount,
    ).animate(_controller);
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 18.h,
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.transparent),
            borderRadius: BorderRadius.circular(10),
          ),
          child: AnimatedBuilder(
            animation: _animation,
            builder: (context, child) {
              return FractionallySizedBox(
                alignment: Alignment.centerLeft,
                widthFactor: (_animation.value >= 0.0) ? _animation.value : 0.0,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: widget.colors,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Text(
                          _animation.isCompleted
                              ? widget.achievedAmount.toStringAsFixed(2)
                              : '',
                          // textScaler: TextScaler.linear(.8.sp),
                          style: TextStyle(fontSize: 8.sp, color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
