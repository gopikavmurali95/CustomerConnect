import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LinearProgressPainter extends CustomPainter {
  final double progress;
  final List<Color> colors;
  final int targetAmount;
  final int achievedAmount;
  final Color subColor;
  final String title;

  LinearProgressPainter({
    required this.progress,
    required this.colors,
    required this.achievedAmount,
    required this.targetAmount,
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
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10
      ..strokeCap = StrokeCap.round
      ..shader = LinearGradient(
        colors: colors,
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
      ).createShader(Rect.fromLTWH(0, 0, size.width * progress, size.height));

    double startX = 0;
    double endX = size.width * progress;

    canvas.drawLine(Offset(startX, size.height / 2),
        Offset(size.width, size.height / 2), backgroundPaint);
    canvas.drawLine(Offset(startX, size.height / 2),
        Offset(endX, size.height / 2), progressPaint);

    TextSpan span = TextSpan(
      style: TextStyle(
        color: Colors.black,
        fontSize: 12.sp,
        fontWeight: FontWeight.normal,
      ),
      children: [
        TextSpan(
          text: '$achievedAmount\n\n',
          style: TextStyle(
            color: Colors.black,
            fontSize: 14.sp,
            fontWeight: FontWeight.bold,
            height: .58,
          ),
        ),
        TextSpan(
          text: title == 'Non Productive Visits'
              ? "Non Productive\n Visits"
              : title,
        ),
      ],
    );

    TextPainter tp = TextPainter(
      text: span,
      textAlign: TextAlign.center,
      textDirection: TextDirection.ltr,
    );

    tp.layout();
    tp.paint(canvas,
        Offset((size.width - tp.width) / 2, size.height / 2 - tp.height - 10));

    // Adding text at the end of the progress bar
    TextSpan endTextSpan = TextSpan(
      text: '${(progress * 100).toStringAsFixed(1)}%',
      style: TextStyle(
        color: colors.last,
        fontSize: 12.sp,
        fontWeight: FontWeight.bold,
      ),
    );

    TextPainter endTp = TextPainter(
      text: endTextSpan,
      textAlign: TextAlign.center,
      textDirection: TextDirection.ltr,
    );

    endTp.layout();
    endTp.paint(
      canvas,
      Offset(endX - endTp.width / 2, size.height / 2 - endTp.height / 2),
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class AnimatedLinearProgressChart extends StatefulWidget {
  final int targetAmount;
  final int achievedAmount;
  final List<Color> colors;
  final Duration duration;
  final Color subColor;
  final String title;

  const AnimatedLinearProgressChart({
    super.key,
    required this.achievedAmount,
    required this.targetAmount,
    required this.colors,
    required this.duration,
    required this.subColor,
    required this.title,
  });

  @override
  // ignore: library_private_types_in_public_api
  _AnimatedLinearProgressChartState createState() =>
      _AnimatedLinearProgressChartState();
}

class _AnimatedLinearProgressChartState
    extends State<AnimatedLinearProgressChart>
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
    double progress = widget.achievedAmount / widget.targetAmount;
    _animation = Tween<double>(begin: 0, end: progress).animate(_controller)
      ..addListener(() {
        setState(() {});
      });

    _controller.forward();
  }

  @override
  void didUpdateWidget(AnimatedLinearProgressChart oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.achievedAmount != widget.achievedAmount ||
        oldWidget.targetAmount != widget.targetAmount) {
      double progress = widget.achievedAmount / widget.targetAmount;
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
          painter: LinearProgressPainter(
            title: widget.title,
            subColor: widget.subColor,
            progress: _animation.value,
            colors: widget.colors,
            achievedAmount: widget.achievedAmount,
            targetAmount: widget.targetAmount,
          ),
          child: const SizedBox(
            height: 30,
            width: 200,
          ),
        ),
        SizedBox(
          height: 5.h,
        ),
      ],
    );
  }
}
