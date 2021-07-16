import 'package:flutter/material.dart';
import 'package:hamro_patro/view/utlities/color.dart';
import 'package:hamro_patro/view/widget/makeText.dart';

class ChangeThemeLight extends StatefulWidget {
  @override
  _ChangeThemeLightState createState() => _ChangeThemeLightState();
}

class _ChangeThemeLightState extends State<ChangeThemeLight> {
  int _value = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return IconButton(
      icon: Icon(
        Icons.brightness_4_rounded,
        color: black.withOpacity(0.46),
      ),
      onPressed: () {
        showModalBottomSheet(
            context: context,
            builder: (context) {
              return Container(
                height: 200,
                width: size.width,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Theme.of(context).canvasColor,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        makeText(
                          "Select Theme",
                          size: Theme.of(context).textTheme.headline6.fontSize,
                          fontWeight: FontWeight.bold,
                        ),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            makeText(
                              "Day Theme",
                              fontWeight: FontWeight.bold,
                              size: Theme.of(context).textTheme.button.fontSize,
                            ),
                            Radio(
                              value: 1,
                              groupValue: _value,
                              onChanged: (val) {
                                setState(() {
                                  _value = val;
                                });
                              },
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            makeText(
                              "Night Theme",
                              fontWeight: FontWeight.bold,
                              size: Theme.of(context).textTheme.button.fontSize,
                            ),
                            Radio(
                              value: 2,
                              groupValue: _value,
                              onChanged: (val) {
                                setState(() {
                                  _value = val;
                                });
                              },
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            makeText(
                              "Automatic Theme",
                              fontWeight: FontWeight.bold,
                              size: Theme.of(context).textTheme.button.fontSize,
                            ),
                            Radio(
                              value: 3,
                              groupValue: _value,
                              onChanged: (val) {
                                setState(() {
                                  _value = val;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            });
      },
    );
  }
}
