import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class BottomBarColumn extends StatelessWidget {
 _launchURL(url) async {
  
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text(
            "Social Links",
            style: TextStyle(
              color: Theme.of(context).primaryTextTheme.headline1.color,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: (){
              _launchURL("#");
            },
          
          child: Text(
            "LinkedIn",
            style: TextStyle(
              color: Theme.of(context).primaryTextTheme.subtitle1.color,
              fontSize: 14,
            ),
          ),
          ),
          SizedBox(height: 5),
           InkWell(
            onTap: (){
              _launchURL("#");
            },
          child: Text(
            "GitHub",
            style: TextStyle(
              color: Theme.of(context).primaryTextTheme.subtitle1.color,
              fontSize: 14,
            ),
          ),
           ),
        ],
      ),
    );
  }
}
