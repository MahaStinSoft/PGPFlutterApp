import 'package:flutter/material.dart';
import 'package:flutterapp/styles.dart';

class GrievanceCounter extends StatefulWidget {
  final String count;
  final String label;
  final Color color;
  final double borderWidth;
  final Color? backgroundColor;

  const GrievanceCounter({
    required this.count,
    required this.label,
    required this.color,
    this.borderWidth = 1.0,
    this.backgroundColor,
  });

  @override
  _GrievanceCounterState createState() => _GrievanceCounterState();
}

class _GrievanceCounterState extends State<GrievanceCounter> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
      margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
      decoration: BoxDecoration(
        color: widget.backgroundColor,
        border: Border.all(
            color: Color.fromARGB(255, 232, 184, 112),
            width: widget.borderWidth),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        children: [
          Text(
            widget.count,
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: widget.color,
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            widget.label,
            textAlign: TextAlign.center,
            style: AppTextStyles.defaultStyle
                .copyWith(fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
