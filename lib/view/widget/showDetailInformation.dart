import 'package:flutter/material.dart';
import 'package:hamro_patro/view/utlities/color.dart';
import 'package:hamro_patro/view/widget/makeText.dart';

class ShowDetailInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: size.height * 0.01,
        horizontal: size.width * 0.02,
      ),
      child: Container(
        height: size.height * 0.24,
        width: size.width,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            //first row
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: size.width * 0.001, color: grey),
              ),
              width: size.width * 0.8,
              child: Padding(
                padding: EdgeInsets.only(
                  left: size.width * 0.036,
                  bottom: size.height * 0.01,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    makeText(
                      "Saturday, Ashar 19",
                      fontWeight: FontWeight.bold,
                      size: Theme.of(context).textTheme.headline6.fontSize,
                    ),
                    SizedBox(
                      height: size.height * 0.006,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        makeText(
                          "4:45 PM",
                          fontWeight: FontWeight.bold,
                          size: Theme.of(context).textTheme.subtitle1.fontSize,
                        ),
                        SizedBox(
                          width: size.width * 0.03,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.cloud_sharp,
                              color: black.withOpacity(0.46),
                              size: 14,
                            ),
                            makeText(' 21 °C | Jawalakhel')
                          ],
                        ),
                      ],
                    ),
                    makeText(
                      "International cooperative Day",
                      fontWeight: FontWeight.bold,
                      size: Theme.of(context).textTheme.subtitle1.fontSize,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        makeText(
                          "असार कृष्ण नवमी",
                          size: Theme.of(context).textTheme.caption.fontSize,
                        ),
                        SizedBox(
                          width: size.width * 0.02,
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          child: makeText(
                            "Panchanga",
                            size: Theme.of(context).textTheme.caption.fontSize,
                          ),
                          style: OutlinedButton.styleFrom(
                            backgroundColor: grey.withOpacity(0.3),
                            primary: black.withOpacity(0.6),
                            minimumSize:
                                Size(size.width * 0, size.height * 0.023),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(19),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: size.height * 0.032,
                          width: size.width * 0.01,
                          color: black.withOpacity(0.46),
                        ),
                        SizedBox(
                          width: size.width * 0.01,
                        ),
                        Icon(
                          Icons.add_circle,
                          size: 16,
                          color: red,
                        ),
                        SizedBox(
                          width: size.width * 0.01,
                        ),
                        makeText(
                          "Add note for Today",
                          textColor: black.withOpacity(0.7),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.006,
                    ),
                    makeText(
                      "Jul 3, 2021",
                      fontWeight: FontWeight.bold,
                      size: Theme.of(context).textTheme.subtitle1.fontSize,
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: size.width * 0.019,
            ),
            //second row
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: size.width * 0.001, color: grey),
              ),
              width: size.width * 0.8,
              child: Padding(
                padding: EdgeInsets.only(
                  left: size.width * 0.036,
                  right: size.width * 0.036,
                  top: size.height * 0.02,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        makeText(
                          "UPCOMMING EVENTS",
                          fontWeight: FontWeight.bold,
                          size: Theme.of(context).textTheme.subtitle1.fontSize,
                        ),
                        makeText("View All".toUpperCase(),
                            size:
                                Theme.of(context).textTheme.subtitle1.fontSize,
                            textColor: red),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    Column(
                      children: [
                        sampleCalendarText(
                          size,
                          leadingText: "Ashar 19",
                          titleText: "International",
                          trailingText: "Today",
                        ),
                        SizedBox(
                          height: size.height * 0.015,
                        ),
                        sampleCalendarText(
                          size,
                          leadingText: "Ashar 21",
                          titleText: "Yogini Ekadashi",
                          trailingText: "in 2 days",
                        ),
                        SizedBox(
                          height: size.height * 0.015,
                        ),
                        sampleCalendarText(
                          size,
                          leadingText: "Ashar 27",
                          titleText: "World Population Day",
                          trailingText: "in 8 days",
                        ),
                        SizedBox(
                          height: size.height * 0.015,
                        ),
                        sampleCalendarText(
                          size,
                          leadingText: "Ashar 29",
                          titleText: "Bhanu Jayanti",
                          trailingText: "in 10 days",
                        ),
                        SizedBox(
                          height: size.height * 0.015,
                        ),
                        sampleCalendarText(
                          size,
                          leadingText: "Ashar 31",
                          titleText: "World Youth skill day",
                          trailingText: "in 12 days",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget sampleCalendarText(
  Size size, {
  String leadingText,
  String titleText,
  String trailingText,
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Row(
        children: [
          makeText(leadingText),
          SizedBox(
            width: size.width * 0.03,
          ),
          makeText(titleText),
        ],
      ),
      makeText(trailingText),
    ],
  );
}
