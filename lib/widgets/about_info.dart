import 'package:flutter/material.dart';

class AboutInfo extends StatelessWidget {
  final String type;
  final String text;

  AboutInfo({this.type, this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          type,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Theme.of(context).primaryTextTheme.headline1.color,
            fontFamily: 'Montserrat',
            fontSize: 18,
            letterSpacing: 2,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 5),
          color: Colors.blueGrey,
          width: 50,
          height: 1,
        ),
        SizedBox(height: 5),
        Flexible(
            child: Container(
          padding: EdgeInsets.only(left: 50, right: 50),
          child: Text(
            text,
            textAlign: TextAlign.justify,
            style: TextStyle(
              color: Theme.of(context).primaryTextTheme.subtitle2.color,
              fontSize: 16,
              fontFamily: 'Montserrat',
            ),
          ),
        ))
      ],
    );
  }
}
