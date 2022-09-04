import 'package:flutter/material.dart';

class CalculateButton extends StatelessWidget {
  final String text;
  final Function callBack;
  final Color color;
  final Color buttonTextColor;
  const CalculateButton({
    super.key,
    required this.text,
    required this.callBack,
    this.color = Colors.grey,
    this.buttonTextColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 70,
        width: 70,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              color: buttonTextColor,
              fontSize: 30,
            ),
          ),
        ),
      ),
      onTap: () => callBack(text),
    );
  }
}

class CalculateButtonForZero extends StatelessWidget {
  final String text;
  final Function callBack;
  final Color color;
  final Color buttonTextColor;
  const CalculateButtonForZero({
    super.key,
    required this.text,
    required this.callBack,
    this.color = Colors.grey,
    this.buttonTextColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 70,
        width: 160,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: buttonTextColor,
                fontSize: 30,
              ),
            ),
          ),
        ),
      ),
      onTap: () => callBack(text),
    );
  }
}
