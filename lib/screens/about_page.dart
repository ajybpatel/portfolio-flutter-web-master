import 'package:flutter/material.dart';
import 'package:explore/widgets/about_info.dart';
import 'package:explore/widgets/featured_tiles.dart';
import 'package:explore/widgets/featured_heading.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          child: Text(
            'About',
            style: TextStyle(
              color: Theme.of(context).primaryTextTheme.headline1.color,
              fontFamily: 'Montserrat',
              fontSize: 20,
              letterSpacing: 2,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 5),
          color: Colors.blueGrey,
          width: 50,
          height: 1,
        ),
        Expanded(
            child: SingleChildScrollView(
          physics: ClampingScrollPhysics(),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(18),
                  child: AboutInfo(
                    type: 'Introduction',
                    text:
                        'Hi, I’m <>. I am a multi-talented human with over 10+ years of experiences in wide range of design disciplines.',
                  ),
                  width: screenSize.width,
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(
                        color:
                            Theme.of(context).primaryTextTheme.headline1.color,
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(18),
                  child: AboutInfo(
                    type: 'Overview',
                    text:
                        'You can also call me a product designer, experience designer, interaction, UI, UX or by any other market defined function-title. I am also a multi-disciplinary maker with over 10 years of experiences in wide range of design disciplines, manager, advisor, entrepreneur, front-end developer, music enthusiast, traveler, photographer and more.',
                  ),
                  width: screenSize.width,
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(
                        color:
                            Theme.of(context).primaryTextTheme.headline1.color,
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
                FeaturedHeading(screenSize: screenSize),
                FeaturedTiles(screenSize: screenSize),
              ]),
        )),
      ],
    );
  }
}
