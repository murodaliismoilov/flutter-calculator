import 'package:calculator/styles/styles.dart';
import 'package:flutter/material.dart';

class HistoryAndScientificButtons extends StatelessWidget {
  const HistoryAndScientificButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
          style: buttonStyleHistory,
          onPressed: () {},
          child: Text(
            'History',
            style: textStyle,
          ),
        ),
        TextButton(
          style: buttonStyleScientific,
          onPressed: () {},
          child: Text(
            'Scientific',
            style: textStyle,
          ),
        ),
      ],
    );
  }
}
