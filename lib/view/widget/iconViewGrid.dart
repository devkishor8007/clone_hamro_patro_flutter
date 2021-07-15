import 'package:flutter/material.dart';
import 'package:hamro_patro/model/hamroService.dart';
import 'package:hamro_patro/view/utlities/color.dart';
import 'package:hamro_patro/view/widget/makeText.dart';

class IconViewGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
}
