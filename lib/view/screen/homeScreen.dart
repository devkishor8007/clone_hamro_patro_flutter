import 'package:flutter/material.dart';
import 'package:hamro_patro/view/screen/drawer.dart';
import 'package:hamro_patro/view/utlities/color.dart';
import 'package:hamro_patro/view/widget/adsShow.dart';
import 'package:hamro_patro/view/widget/adsShowImage.dart';
import 'package:hamro_patro/view/widget/circleAvtar.dart';
import 'package:hamro_patro/view/widget/featuresNews.dart';
import 'package:hamro_patro/view/widget/iconViewGrid.dart';
import 'package:hamro_patro/view/widget/makeText.dart';
import 'package:hamro_patro/view/widget/poadcastListen.dart';
import 'package:hamro_patro/view/widget/showDetailInformation.dart';
import 'package:hamro_patro/view/widget/upcommingEvent.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
            //ShowDetailInfo : one side row contain today detail information and another side row contain the upcomming events
            ShowDetailInfo(),
            // UpcommingEvent - get all the Upcoming Events with the horizontal list data
            UpcommingEvent(),
            // freeRedirectCall : navigate to the free call and message section
            freeRedirectCall(size),
            // IconViewGrid : have list of hamro services in the gridview
            IconViewGrid(),
            SizedBox(
              height: size.height * 0.02,
            ),
            // FeatureNews : list of features news can be show and data is in the horizontal form
            FeatureNews(),
            SizedBox(
              height: size.height * 0.01,
            ),
            // adsShow : for showing the ads
            AdsShow(),
            SizedBox(
              height: size.height * 0.01,
            ),
            // PoadcastListen : list of features poadcast can be show and data is in the horizontal form
            PoadcastListen(),
            //AdsShowImage : show the images ads
            AdsShowImage(),
            SizedBox(
              height: size.height * 0.01,
            ),
          ],
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

  _bottomChangeLight(size, BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: 200,
            width: size.width,
            child: Container(
              color: Theme.of(context).canvasColor,
              child: Column(
                children: [
                  makeText(
                    "Select Theme",
                    size: Theme.of(context).textTheme.headline6.fontSize,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
            ),
          );
        });
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
                onPressed: () {
                  _bottomChangeLight(size, context);
                },
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
}
