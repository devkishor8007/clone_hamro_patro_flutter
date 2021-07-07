import 'package:flutter/material.dart';
import 'package:patro_mero/model/hamroService.dart';
import 'package:patro_mero/view/screen/drawer.dart';
import 'package:patro_mero/view/utlities/color.dart';
import 'package:patro_mero/view/widget/circleAvtar.dart';
import 'package:patro_mero/view/widget/makeText.dart';

class HomeScreen extends StatelessWidget {
  final scaff = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        key: scaff,
        drawer: DrawerScreen(),
        body: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            //customAppBar : see the AppBar
            customAppBar(size, context),
            // noticeMessage - for the message to check the astrology or provide some offers
            noticeMessage(
              size,
              context,
              firstText: "हाम्रो ज्योतिष:",
              secondText:
                  " ज्योतिष परामर्शका लागि आजै टिकेट किन्नुहोस् र २०% छुटको फाईदा उठाउनुहोस।",
            ),
            //twoRowSides : one side row contain today detail information and another side row contain the upcomming events
            twoRowSides(size, context),

            // manyUpcomingEvents - get all the Upcoming Events with the horizontal list data
            manyUpcomingEvents(size, context),
            // freeRedirectCall : navigate to the free call and message section
            freeRedirectCall(size),
            // hamroservicegrid : have list of hamro services in the gridview
            hamroservicegrid(size, context),
            SizedBox(
              height: size.height * 0.02,
            ),
          ],
        ),
      ),
    );
  }

  Widget hamroservicegrid(Size size, BuildContext context) {
    return Container(
      child: Card(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: size.height * 0.01,
            horizontal: size.width * 0.02,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              makeText(
                "Hamro Service",
                fontWeight: FontWeight.bold,
                size: Theme.of(context).textTheme.headline6.fontSize,
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              Container(
                height: size.height * 0.48,
                child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 10,
                      crossAxisCount: 4,
                    ),
                    itemCount: getHamroService.length,
                    itemBuilder: (_, index) {
                      return Stack(
                        fit: StackFit.expand,
                        clipBehavior: Clip.hardEdge,
                        alignment: Alignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: size.height * 0.02,
                              ),
                              Container(
                                  height: size.height * 0.06,
                                  child: getHamroService[index].image),
                              SizedBox(
                                height: size.height * 0.008,
                              ),
                              makeText(
                                getHamroService[index].itemName,
                                fontWeight: FontWeight.bold,
                              ),
                            ],
                          ),
                          Positioned(
                            right: size.width * 0.08,
                            top: -size.height * 0.002,
                            left: 0,
                            child: getHamroService[index].updateText == ""
                                ? Container()
                                : Container(
                                    alignment: Alignment.center,
                                    height: size.height * 0.025,
                                    width: size.width * 0.14,
                                    decoration: BoxDecoration(
                                      color: red,
                                      borderRadius: BorderRadius.circular(18),
                                    ),
                                    child: makeText(
                                      getHamroService[index].updateText,
                                      textColor: white,
                                    ),
                                  ),
                          ),
                        ],
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget freeRedirectCall(Size size) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: size.height * 0.01,
        horizontal: size.width * 0.02,
      ),
      child: Container(
        height: size.height * 0.09,
        decoration: BoxDecoration(
          color: amber.withOpacity(0.3),
          border: Border.all(width: size.width * 0.001, color: grey),
        ),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.message,
                color: red,
              ),
              label: Text(
                "Message",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: white,
              ),
            ),
            Stack(
              children: [
                Text("Click here for free audio and\nvideo call"),
                Positioned(
                  right: size.width * 0.24,
                  top: size.height * 0.02,
                  child: Icon(
                    Icons.call,
                    size: 17,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget manyUpcomingEvents(Size size, BuildContext context) {
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

  Widget twoRowSides(Size size, BuildContext context) {
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

  Widget noticeMessage(
    Size size,
    BuildContext context, {
    String firstText,
    String secondText,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: size.height * 0.01,
        horizontal: size.width * 0.02,
      ),
      child: Container(
        height: size.height * 0.09,
        decoration: BoxDecoration(
          color: amber.withOpacity(0.6),
          border: Border.all(width: size.width * 0.001, color: grey),
        ),
        alignment: Alignment.center,
        padding: EdgeInsets.all(8),
        child: RichText(
          text: TextSpan(
              text: firstText,
              style: TextStyle(
                color: red,
                fontSize: Theme.of(context).textTheme.subtitle1.fontSize,
              ),
              children: [
                TextSpan(
                  text: secondText,
                  style: TextStyle(
                    color: black,
                    fontSize: Theme.of(context).textTheme.subtitle1.fontSize,
                  ),
                ),
              ]),
        ),
      ),
    );
  }

  Widget customAppBar(Size size, BuildContext context) {
    return Row(
      children: [
        IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              scaff.currentState.openDrawer();
            }),
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
                  onPressed: () {
                    scaff.currentState.openDrawer();
                  },
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
            children: [
              IconButton(
                icon: Icon(
                  Icons.brightness_4_rounded,
                  color: black.withOpacity(0.46),
                ),
                onPressed: () {},
              ),
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
}