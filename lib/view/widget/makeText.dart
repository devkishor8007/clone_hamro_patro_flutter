import 'package:flutter/cupertino.dart';

Widget makeText(
  String textString, {
  double size,
  Color textColor,
  FontWeight fontWeight,
}) {
  return Text(
    textString,
    style: TextStyle(
      color: textColor,
      fontSize: size,
      fontWeight: fontWeight,
    ),
  );
}
