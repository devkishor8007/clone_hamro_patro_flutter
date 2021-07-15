import 'package:flutter/material.dart';
import 'package:hamro_patro/model/ads_model.dart';

class AdsShowImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.25,
      width: size.width * 0.6,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: getProductAds.length,
          itemBuilder: (_, index) {
            return Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                height: size.height * 0.25,
                width: size.width * 0.9,
                child: getProductAds[index].fullimage,
              ),
            );
          }),
    );
  }
}
