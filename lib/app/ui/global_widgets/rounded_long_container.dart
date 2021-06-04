import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class RoundedLongContainer extends StatelessWidget {
  final double width;
  RoundedLongContainer({@required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 24),
      child: Material(
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24.0),
        ),
        // clipBehavior: Clip.antiAlias,
        child: Container(
          height: 48,
          width: width,
          decoration: BoxDecoration(
            gradient: ui.Gradient.linear([Colors.red, Colors.yellow]),
            color: Colors.white,
            borderRadius: BorderRadius.circular(24),
          ),
        ),
      ),
    );
  }
}
