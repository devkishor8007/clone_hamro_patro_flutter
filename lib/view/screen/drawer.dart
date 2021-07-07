import 'package:flutter/material.dart';
import 'package:patro_mero/view/utlities/color.dart';
import 'package:patro_mero/view/widget/circleAvtar.dart';
import 'package:patro_mero/view/widget/makeText.dart';

class DrawerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(0),
        children: [
          Stack(
            children: [
              Container(
                height: size.height * 0.2,
                width: size.width,
                child: Image.asset(
                  "assets/cover.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: size.height * 0.03,
                left: size.width * 0.03,
                child: Column(
                  children: [
                    circleAvatar(
                      radius: 35,
                      child: Icon(
                        Icons.person,
                        size: 40,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    makeText(
                      "Login",
                      textColor: white,
                      fontWeight: FontWeight.bold,
                      size: Theme.of(context).textTheme.bodyText1.fontSize,
                    ),
                  ],
                ),
              ),
            ],
          ),
          listTile(
            icon: Icons.dashboard_rounded,
            textString: "Hamro Patro",
          ),
          listTile(
            icon: Icons.book,
            textString: "News",
          ),
          listTile(
            icon: Icons.message,
            textString: "Hamro Message",
          ),
          listTile(
            icon: Icons.calendar_today_sharp,
            textString: "Calendar",
          ),
          Divider(),
          listTile(
            icon: Icons.how_to_vote,
            textString: "भोटे गर्नुहोस्",
          ),
          Divider(),
          listTile(
            icon: Icons.tv,
            textString: "TV",
          ),
          listTile(
            icon: Icons.radio,
            textString: "Radio",
          ),
          listTile(
            icon: Icons.music_note_outlined,
            textString: "Audio",
          ),
          listTile(
            icon: Icons.video_label_rounded,
            textString: "Videos",
          ),
          Divider(),
          listTile(
            icon: Icons.games,
            textString: "Hamro Games",
          ),
          Divider(),
          listTile(
            icon: Icons.language,
            textString: "Language",
          ),
          listTile(
            icon: Icons.nfc,
            textString: "Kundali",
          ),
          Divider(),
          listTile(
            icon: Icons.privacy_tip,
            textString: "Privacy Policy",
          ),
          listTile(
            icon: Icons.settings,
            textString: "Settings",
          ),
          Divider(),
          listTile(
            icon: Icons.person_pin_circle_outlined,
            textString: "Login",
          ),
        ],
      ),
    );
  }

  Widget listTile({
    String textString,
    IconData icon,
  }) {
    return ListTile(
      leading: Icon(icon),
      title: makeText(textString),
    );
  }
}
