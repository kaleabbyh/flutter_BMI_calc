import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({@required this.onTap, this.buttonTitle});
  final Function onTap;
  final String buttonTitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        decoration: BoxDecoration(
          color: kBottomColor,
          borderRadius: BorderRadius.circular(10),
        ),
        height: kBottomHeight,
        width: double.infinity,
      ),
    );
  }
}
