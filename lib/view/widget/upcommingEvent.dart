import 'package:flutter/material.dart';
import 'package:hamro_patro/view/utlities/color.dart';
import 'package:hamro_patro/view/widget/makeText.dart';

class UpcommingEvent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: size.height * 0.01,
        horizontal: size.width * 0.02,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              makeText(
                "Upcoming Events",
                fontWeight: FontWeight.bold,
                size: Theme.of(context).textTheme.subtitle1.fontSize,
              ),
              Icon(Icons.arrow_forward),
            ],
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          Container(
            height: size.height * 0.1,
            width: size.width,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                // first row
                //upcommingEventList have short information of upcomming event
                upcommingEventList(
                  size,
                  context,
                  nepaliDate: "Asar 19",
                  imageName: "assets/helping.jpg",
                  topicString: "International cooperative Day",
                  englishDate: "03 Jul 2021",
                  whenDate: "Today",
                ),
                SizedBox(
                  width: size.width * 0.02,
                ),
                //second row
                //upcommingEventList have short information of upcomming event
                upcommingEventList(
                  size,
                  context,
                  nepaliDate: "Asar 21",
                  imageName: "assets/god.jpg",
                  topicString: "Yogini Ekadashi",
                  englishDate: "05 Jul 2021",
                  whenDate: "2 days after",
                ),
                SizedBox(
                  width: size.width * 0.02,
                ),
                //third row
                //upcommingEventList have short information of upcomming event
                upcommingEventList(
                  size,
                  context,
                  nepaliDate: "Asar 27",
                  imageName: "assets/world.jpg",
                  topicString: "World Population Day",
                  englishDate: "11 Jul 2021",
                  whenDate: "8 days after",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget upcommingEventList(
  Size size,
  BuildContext context, {
  String nepaliDate,
  String imageName,
  String topicString,
  String englishDate,
  String whenDate,
}) {
  return Container(
    width: size.width * 0.9,
    decoration: BoxDecoration(
      border: Border.all(
        width: size.width * 0.001,
        color: grey,
      ),
    ),
    child: Row(
      // mainAxisAlignment: MainAxisAlignment,
      children: [
        // first row of upcomminglist
        Container(
          width: size.width * 0.2,
          height: size.height * 0.1,
          color: black,
          child: Image.asset(
            imageName,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          width: size.width * 0.02,
        ),
        // second row of upcomminglist
        Expanded(
          flex: 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              makeText(
                nepaliDate,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              makeText(
                topicString,
                size: Theme.of(context).textTheme.caption.fontSize,
              ),
              SizedBox(
                height: size.height * 0.006,
              ),
              makeText(englishDate),
            ],
          ),
        ),
        // third row of upcomminglist
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              makeText(whenDate),
              SizedBox(
                height: size.height * 0.01,
              ),
              Icon(
                Icons.navigate_next,
                size: 17,
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
