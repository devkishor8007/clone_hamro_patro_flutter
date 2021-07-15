import 'package:flutter/material.dart';
import 'package:hamro_patro/model/news_model.dart';
import 'package:hamro_patro/view/widget/circleAvtar.dart';
import 'package:hamro_patro/view/widget/makeText.dart';

class FeatureNews extends StatelessWidget {
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
                            "https://image.flaticon.com/icons/png/512/237/237014.png"),
                      ),
                      makeText(
                        "Feature News",
                        fontWeight: FontWeight.bold,
                        size: Theme.of(context).textTheme.headline6.fontSize,
                      ),
                      makeText(
                        "Read the news selected by our editiors",
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
              height: size.height * 0.37,
              width: size.width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: getNewsModel.length,
                itemBuilder: (_, index) {
                  return Card(
                    child: Container(
                      width: size.width * 0.55,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              height: size.height * 0.19,
                              width: size.width * 0.55,
                              child: getNewsModel[index].fullimage),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: size.width * 0.0,
                            ),
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  makeText(
                                    getNewsModel[index].title,
                                    fontWeight: FontWeight.bold,
                                    size: 17,
                                  ),
                                  makeText(
                                    getNewsModel[index].subtitle,
                                    size: Theme.of(context)
                                        .textTheme
                                        .button
                                        .fontSize,
                                  ),
                                  SizedBox(
                                    height: size.height * 0.01,
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      circleAvatar(
                                        radius: 14,
                                        child: getNewsModel[index].logo,
                                      ),
                                      SizedBox(
                                        width: size.width * 0.02,
                                      ),
                                      makeText(
                                        getNewsModel[index].postBy,
                                        size: Theme.of(context)
                                            .textTheme
                                            .subtitle1
                                            .fontSize,
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
