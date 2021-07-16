import 'package:flutter/material.dart';
import 'package:hamro_patro/view/utlities/color.dart';
import 'package:hamro_patro/view/widget/changeTheme.dart';
import 'package:hamro_patro/view/widget/circleAvtar.dart';
import 'package:hamro_patro/view/widget/makeText.dart';

Widget customAppBar(Size size, BuildContext context, {Function() onPressed}) {
  return Row(
    children: [
      IconButton(
        icon: Icon(Icons.menu),
        onPressed: onPressed,
      ),
      Expanded(
        child: Row(
          children: [
            circleAvatar(
              radius: 11,
              child: IconButton(
                padding: EdgeInsets.all(1),
                icon: Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 17,
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(
              width: size.width * 0.023,
            ),
            makeText(
              'Hamro Patro',
              fontWeight: FontWeight.bold,
              size: Theme.of(context).textTheme.headline6.fontSize,
              textColor: Colors.red,
            ),
          ],
        ),
      ),
      Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            ChangeThemeLight(),
            IconButton(
              icon: Icon(
                Icons.notifications,
                color: black.withOpacity(0.46),
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    ],
  );
}
