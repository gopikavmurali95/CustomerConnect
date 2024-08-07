import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SemiCircleProgressPainter extends CustomPainter {
  final double progress;
  final Color color;
  final int completedCount;
  final int totalCount;
  final Color subColor;
  final String title;

  SemiCircleProgressPainter({
    required this.progress,
    required this.color,
    required this.completedCount,
    required this.totalCount,
    required this.subColor,
    required this.title,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Paint backgroundPaint = Paint()
      ..color = subColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10
      ..strokeCap = StrokeCap.round;

    Paint progressPaint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10
      ..strokeCap = StrokeCap.round;

    double radius = size.width / 2;
    Offset center = Offset(size.width / 2, size.height);

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      3.14159265359,
      3.14159265359,
      false,
      backgroundPaint,
    );

    double sweepAngle = progress * 3.14159265359;

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      3.14159265359,
      sweepAngle,
      false,
      progressPaint,
    );

    /* TextSpan span = TextSpan(
      style: TextStyle(
          color: Colors.black, fontSize: 12.sp, fontWeight: FontWeight.normal),
      children: [
        TextSpan(
            text: '$completedCount\n',
            style: TextStyle(
                color: Colors.black,
                fontSize: 12.sp,
                fontWeight: FontWeight.bold,
                height: .5)),
        TextSpan(text: title),
      ],
    );
    TextPainter tp = TextPainter(
      text: span,
      textAlign: TextAlign.center,
      textDirection: TextDirection.ltr,
    );
    tp.layout();
    tp.paint(
      canvas,
      Offset(center.dx - tp.width / 2, center.dy - radius / 2 - tp.height / 8),
    ); */
    TextSpan span = TextSpan(
      style: TextStyle(
          color: Colors.black, fontSize: 12.sp, fontWeight: FontWeight.normal),
      children: [
        TextSpan(
            text: '$totalCount\n\n',
            style: TextStyle(
              color: Colors.black,
              fontSize: 14.sp,
              fontWeight: FontWeight.bold,
              height: .58,
            )),
        TextSpan(
            text: title == 'Non Productive Visits'
                ? "Non Productive\n Visits"
                : title),
      ],
    );
    TextPainter tp = TextPainter(
      text: span,
      textAlign: TextAlign.center,
      textDirection: TextDirection.ltr,
    );
    tp.layout();
    tp.paint(
      canvas,
      Offset(center.dx - tp.width / 2, center.dy - radius / 2 - tp.height / 8),
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class AnimatedSemiCircleProgressChart extends StatefulWidget {
  final int totalCount;
  final int completedCount;
  final Color color;
  final Duration duration;
  final Color subColors;
  final String title;

  const AnimatedSemiCircleProgressChart({
    super.key,
    required this.totalCount,
    required this.completedCount,
    required this.color,
    required this.duration,
    required this.subColors,
    required this.title,
  });

  @override
  // ignore: library_private_types_in_public_api
  _AnimatedSemiCircleProgressChartState createState() =>
      _AnimatedSemiCircleProgressChartState();
}

class _AnimatedSemiCircleProgressChartState
    extends State<AnimatedSemiCircleProgressChart>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: widget.duration,
    );
    double progress = widget.completedCount / widget.totalCount;
    _animation = Tween<double>(begin: 0, end: progress).animate(_controller)
      ..addListener(() {
        setState(() {});
      });

    _controller.forward();
  }

  @override
  void didUpdateWidget(AnimatedSemiCircleProgressChart oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.completedCount != widget.completedCount ||
        oldWidget.totalCount != widget.totalCount) {
      double progress = widget.completedCount / widget.totalCount;
      _animation = Tween<double>(begin: _animation.value, end: progress)
          .animate(_controller)
        ..addListener(() {
          setState(() {});
        });
      _controller.forward(from: 0);
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomPaint(
          painter: SemiCircleProgressPainter(
            title: widget.title,
            subColor: widget.subColors,
            progress: _animation.value,
            color: widget.color,
            completedCount: widget.completedCount,
            totalCount: widget.totalCount,
          ),
          child: const SizedBox(
            height: 80,
            width: 120,
          ),
        ),
        SizedBox(
          height: 5.h,
        )
      ],
    );
  }
}
