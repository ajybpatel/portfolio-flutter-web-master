import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class WorkCard extends StatelessWidget {
  final String appIcon;
  final String appName;
  final String appType;
  final String appDescription;
  final String appTechnologies;
  final String appTools;
  final String appImage;
  final bool isAppLinklive;
  final String appLink;

  WorkCard(
      {this.appIcon,
      this.appName,
      this.appType,
      this.appDescription,
      this.appTechnologies,
      this.appTools,
      this.appImage,
      this.isAppLinklive,
      this.appLink});

  _launchURL(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      clipBehavior: Clip.antiAlias,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(
                  color: Theme.of(context).primaryTextTheme.headline1.color,
                  width: 2.0,
                ),
              ),
            ),
            child: ListTile(
              leading: ImageIcon(
                AssetImage('$appIcon'),
                size: 50,
                color: Theme.of(context).primaryTextTheme.headline1.color,
              ),
              title: Text('$appName'),
              subtitle: Text(
                '$appType',
                style: TextStyle(
                    color: Theme.of(context).primaryTextTheme.subtitle1.color),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Image.asset('$appImage'),
              ),
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    color: Theme.of(context).primaryTextTheme.subtitle1.color,
                    fontFamily: 'Montserrat',
                    fontSize: 12,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Description:',
                        style: TextStyle(
                          color: Theme.of(context)
                              .primaryTextTheme
                              .subtitle1
                              .color,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        )),
                    TextSpan(text: ' $appDescription'),
                  ],
                ),
              ),
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    color: Theme.of(context).primaryTextTheme.subtitle1.color,
                    fontFamily: 'Montserrat',
                    fontSize: 12,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Technologies:',
                        style: TextStyle(
                          color: Theme.of(context)
                              .primaryTextTheme
                              .subtitle1
                              .color,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        )),
                    TextSpan(text: ' $appTechnologies'),
                  ],
                ),
              ),
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    color: Theme.of(context).primaryTextTheme.subtitle1.color,
                    fontFamily: 'Montserrat',
                    fontSize: 12,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Tools:',
                        style: TextStyle(
                          color: Theme.of(context)
                              .primaryTextTheme
                              .subtitle1
                              .color,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        )),
                    TextSpan(text: ' $appTools'),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () {
                  _launchURL("$appLink");
                },
                icon: isAppLinklive
                    ? Icon(Icons.link_rounded)
                    : ImageIcon(
                        AssetImage('../assets/images/git-hub.png'),
                        size: 50,
                        color:
                            Theme.of(context).primaryTextTheme.headline1.color,
                      ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
