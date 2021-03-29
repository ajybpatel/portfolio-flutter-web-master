import 'package:explore/widgets/responsive.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key key,
  }) : super(key: key);
  _launchURL(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      color: Theme.of(context).bottomAppBarColor,
      child: ResponsiveWidget.isSmallScreen(context)
          ? Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(height: 10),
                    InkWell(
                      onTap: () {
                        _launchURL("#");
                      },
                      child: ImageIcon(
                        AssetImage('../assets/images/linkedin.png'),
                        size: 25,
                        color:
                            Theme.of(context).primaryTextTheme.headline1.color,
                      ),
                    ),
                    SizedBox(width: 2),
                    InkWell(
                      onTap: () {
                        _launchURL("#");
                      },
                      child: ImageIcon(
                        AssetImage('../assets/images/git-hub.png'),
                        size: 25,
                        color:
                            Theme.of(context).primaryTextTheme.headline1.color,
                      ),
                    ),
                    SizedBox(width: 2),
                    InkWell(
                      onTap: () {
                        _launchURL("#");
                      },
                      child: ImageIcon(
                        AssetImage('../assets/images/gmail-new-icon.ico'),
                        size: 25,
                        color:
                            Theme.of(context).primaryTextTheme.headline1.color,
                      ),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
                
              ],
            )
          : Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                                        SizedBox(height: 10),
                    InkWell(
                      onTap: () {
                        _launchURL("#");
                      },
                      child: ImageIcon(
                        AssetImage('../assets/images/linkedin.png'),
                        size: 25,
                        color:
                            Theme.of(context).primaryTextTheme.headline1.color,
                      ),
                    ),
                    SizedBox(width: 20),
                    InkWell(
                      onTap: () {
                        _launchURL("#");
                      },
                      child: ImageIcon(
                        AssetImage('../assets/images/git-hub.png'),
                        size: 25,
                        color:
                            Theme.of(context).primaryTextTheme.headline1.color,
                      ),
                    ),
                    SizedBox(width: 20),
                    InkWell(
                      onTap: () {
                        _launchURL("#");
                      },
                      child: ImageIcon(
                        AssetImage('../assets/images/gmail-new-icon.ico'),
                        size: 25,
                        color:
                            Theme.of(context).primaryTextTheme.headline1.color,
                      ),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
                SizedBox(height: 10),
              ],
            ),
    );
  }
}
