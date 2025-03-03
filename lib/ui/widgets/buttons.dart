import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final double h;
  final double w;
  final double r;
  final void Function() onTap;
  final String text;
  const Buttons({
    super.key,
    required this.h,
    required this.onTap,
    required this.r,
    required this.text,
    required this.w,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: h,
        width: w,
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(r),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
