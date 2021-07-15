import 'package:flutter/material.dart';
import 'package:hamro_patro/model/ads_model.dart';

import 'makeText.dart';

class AdsShow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: size.height * 0.01,
        horizontal: size.width * 0.02,
      ),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.red,
          ),
        ),
        height: size.height * 0.2,
        width: size.width,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: getAdsMaker.length,
          itemBuilder: (_, index) {
            return Card(
              child: Container(
                width: size.width,
                child: Stack(
                  children: [
                    Container(
                        height: size.height * 0.2,
                        width: size.width,
                        child: getAdsMaker[index].fullimage),
                    Positioned(
                      bottom: size.height * 0.001,
                      child: Container(
                        alignment: Alignment.center,
                        width: size.width * 0.1,
                        decoration: BoxDecoration(
                          color: Colors.amberAccent,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                          ),
                        ),
                        child: makeText(
                          "ads",
                          fontWeight: FontWeight.bold,
                          size: 15,
                        ),
                      ),
                    ),
                    Positioned(
                      top: size.height * 0.07,
                      right: size.width * 0.1,
                      child: Container(
                        alignment: Alignment.center,
                        width: size.width * 0.35,
                        height: size.height * 0.04,
                        decoration: BoxDecoration(
                          color: Colors.indigo,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: makeText(
                          getAdsMaker[index].title,
                          textColor: Colors.white,
                          fontWeight: FontWeight.bold,
                          size: 13,
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
    );
  }
}
