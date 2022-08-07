// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CircleShape extends StatelessWidget {
  const CircleShape({
    Key? key,
    this.width,
  }) : super(key: key);
  final double? width;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 120,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.fromBorderSide(
          BorderSide(
            width: width ?? 25,
            color: Colors.white.withOpacity(0.1),
          ),
        ),
      ),
    );
  }
}
