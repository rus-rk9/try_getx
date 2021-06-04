import 'package:flutter/material.dart';

class StandartButton extends StatelessWidget {
  final void Function() onPressed;
  final Color color;
  StandartButton({@required this.onPressed, @required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      margin: EdgeInsets.only(right: 16),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24.0),
            side: BorderSide(
              color: Colors.black,
              width: 0.5,
            ),
          ),
          primary: color,
          elevation: 0,
        ),
        child: SizedBox(),
      ),
    );
  }
}
