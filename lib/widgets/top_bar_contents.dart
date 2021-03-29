import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:explore/routes/routes.dart';

class TopBarContents extends StatefulWidget {
  final double opacity;

  TopBarContents(this.opacity);

  @override
  _TopBarContentsState createState() => _TopBarContentsState();
}

class _TopBarContentsState extends State<TopBarContents> {
  final List _isHovering = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return PreferredSize(
      preferredSize: Size(screenSize.width, 1000),
      child: Container(
        color: Theme.of(context).backgroundColor,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  navKey.currentState.pushNamed(routeIndex);
                },
                child: Text(
                  'YOUR NAME',
                  style: TextStyle(
                    color: Theme.of(context).primaryTextTheme.headline1.color,
                    fontSize: 20,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                    letterSpacing: 3,
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(width: screenSize.width / 8),
                    InkWell(
                      onHover: (value) {
                        setState(() {
                          value
                              ? _isHovering[0] = true
                              : _isHovering[0] = false;
                        });
                      },
                      onTap: () {
                        navKey.currentState.pushNamed(routeAbout);
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'ABOUT',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              letterSpacing: 3,
                              color: _isHovering[0]
                                  ? Colors.blue[200]
                                  : Theme.of(context)
                                      .primaryTextTheme
                                      .subtitle1
                                      .color,
                            ),
                          ),
                          SizedBox(height: 5),
                          Visibility(
                            maintainAnimation: true,
                            maintainState: true,
                            maintainSize: true,
                            visible: _isHovering[0],
                            child: Container(
                              height: 1,
                              width: 40,
                              color: Colors.blue[200],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: screenSize.width / 20),
                    InkWell(
                      onHover: (value) {
                        setState(() {
                          value
                              ? _isHovering[1] = true
                              : _isHovering[1] = false;
                        });
                      },
                      onTap: () {
                        navKey.currentState.pushNamed(routeWork);
                      },
                      customBorder: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'WORK',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              letterSpacing: 3,
                              color: _isHovering[1]
                                  ? Colors.blue[200]
                                  : Theme.of(context)
                                      .primaryTextTheme
                                      .subtitle1
                                      .color,
                            ),
                          ),
                          SizedBox(height: 5),
                          Visibility(
                            maintainAnimation: true,
                            maintainState: true,
                            maintainSize: true,
                            visible: _isHovering[1],
                            child: Container(
                              height: 1,
                              width: 60,
                              color: Colors.blue[200],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: screenSize.width / 20),
              IconButton(
                icon: Icon(Icons.brightness_4_outlined),
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                color: Theme.of(context).iconTheme.color,
                onPressed: () {
                  DynamicTheme.of(context).setBrightness(
                      Theme.of(context).brightness == Brightness.dark
                          ? Brightness.light
                          : Brightness.dark);
                },
              ),
              SizedBox(
                width: screenSize.width / 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
