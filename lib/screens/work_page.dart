import 'package:flutter/material.dart';
import 'package:explore/widgets/work_card.dart';
import 'package:explore/widgets/responsive.dart';

class WorkPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          child: Text(
            'Showcase',
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
          child: GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: ResponsiveWidget.isSmallScreen(context)
                ? 1
                : ResponsiveWidget.isMediumScreen(context)
                    ? 2
                    : 3,
            children: [
              WorkCard(
                appIcon: "../assets/images/flutter.png",
                appName: "IOS Application master",
                appType: "IOS Application",
                appDescription: "IOS app desc",
                appTechnologies: "Objectiv-c",
                appTools: "XCode",
                appImage: "assets/images/web-application.png",
                isAppLinklive: false,
                appLink: "https://www.google.com/",
              ),
              WorkCard(
                appIcon: "../assets/images/web.png",
                appName: "Web Application master",
                appType: "Web Application",
                appDescription: "Web app desc",
                appTechnologies: "HTML, CSS, JS",
                appTools: "VS Code",
                appImage: "assets/images/web-application.png",
                isAppLinklive: false,
                appLink: "https://www.google.com/",
              ),
              WorkCard(
                appIcon: "../assets/images/mobile-app.png",
                appName: "Android Application master",
                appType: "Android Application",
                appDescription: "Android app desc",
                appTechnologies: "Java",
                appTools: "Android Studio",
                appImage: "assets/images/web-application.png",
                isAppLinklive: true,
                appLink: "https://www.google.com/",
              ),
              WorkCard(
                appIcon: "../assets/images/Apple.png",
                appName: "IOS Application master",
                appType: "IOS Application",
                appDescription: "IOS app desc",
                appTechnologies: "Objectiv-c",
                appTools: "XCode",
                appImage: "assets/images/ios-application.png",
                isAppLinklive: false,
                appLink: "https://www.google.com/",
              ),
              WorkCard(
                appIcon: "../assets/images/desktop-ico.png",
                appName: "Desktop Application master",
                appType: "Desktop Application",
                appDescription: "IOS app desc",
                appTechnologies: "Objectiv-c",
                appTools: "XCode",
                appImage: "assets/images/ios-application.png",
                isAppLinklive: false,
                appLink: "https://www.google.com/",
              ),
            ],
          ),
        ),
      ],
    );
  }
}
