import 'package:explore/widgets/bottom_bar.dart';
import 'package:explore/widgets/carousel.dart';
import 'package:explore/widgets/destination_heading.dart';
import 'package:flutter/material.dart';
import 'package:explore/widgets/about_info.dart';

class Index extends StatefulWidget {
  @override
  _Index createState() => _Index();
}

class _Index extends State<Index> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return SingleChildScrollView(
      physics: ClampingScrollPhysics(),
      child: Column(
        children: [
          Stack(children: [
            Container(
              color: Theme.of(context).backgroundColor,
              height: screenSize.height * 0.45,
              width: screenSize.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 50),
                          padding: EdgeInsets.all(18),
                          child: AboutInfo(
                            type: 'Hello, <World>',
                            text:
                                'I am freelance Software developer, with experience in building cutting age solutions for Web, Mobile and Desktop users. ',
                          ),
                          width: screenSize.width,
                          decoration: BoxDecoration(
                            border: Border(
                              left: BorderSide(
                                color: Theme.of(context)
                                    .primaryTextTheme
                                    .headline1
                                    .color,
                                width: 2.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ]),
          // SizedBox(height: screenSize.height / 8),
          DestinationHeading(
            screenSize: screenSize,
            title: 'SKILL HIGHLIGHTS',
          ),
          DestinationCarousel(),
          SizedBox(height: screenSize.height / 10),
          BottomBar(),
        ],
      ),
    );
  }
}
