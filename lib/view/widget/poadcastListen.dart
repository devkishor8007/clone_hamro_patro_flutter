import 'package:flutter/material.dart';
import 'package:hamro_patro/model/featurepodcast_model.dart';
import 'package:hamro_patro/view/widget/circleAvtar.dart';
import 'package:hamro_patro/view/widget/makeText.dart';

class PoadcastListen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Card(
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: size.height * 0.01,
          horizontal: size.width * 0.02,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width: size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      circleAvatar(
                        radius: 20,
                        child: Image.network(
                            "https://image.flaticon.com/icons/png/512/945/945200.png"),
                      ),
                      makeText(
                        "Featured Podcast in Hamro Patro",
                        fontWeight: FontWeight.bold,
                        size: Theme.of(context).textTheme.headline6.fontSize,
                      ),
                      makeText(
                        "Nepali poadcasts that you need to listen today",
                        size: Theme.of(context).textTheme.bodyText1.fontSize,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: size.width * 0.06,
                  top: size.height * 0.02,
                  child: Icon(Icons.arrow_forward_rounded),
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            Container(
              height: size.height * 0.23,
              width: size.width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: getFeaturepodcastModel.length,
                itemBuilder: (_, index) {
                  return Card(
                    child: Container(
                      width: size.width * 0.3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              height: size.height * 0.14,
                              width: size.width * 0.3,
                              child: getFeaturepodcastModel[index].fullimage),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: size.height * 0.01,
                            ),
                            child: Container(
                              alignment: Alignment.center,
                              child: makeText(
                                getFeaturepodcastModel[index].title,
                                fontWeight: FontWeight.bold,
                                size: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              width: size.width,
              child: TextButton(
                onPressed: () {},
                child: makeText("View All >"),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  primary: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
