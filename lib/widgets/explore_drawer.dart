import 'package:explore/routes/routes.dart';
import 'package:flutter/material.dart';

class ExploreDrawer extends StatefulWidget {
  const ExploreDrawer({
    Key key,
  }) : super(key: key);

  @override
  _ExploreDrawerState createState() => _ExploreDrawerState();
}

class _ExploreDrawerState extends State<ExploreDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Theme.of(context).backgroundColor,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              InkWell(
                onTap: () {
                  navKey.currentState.pushNamed(routeAbout);
                },
                child: Container(
                  padding: EdgeInsets.fromLTRB(50, 5, 50, 5),
                  width: 200,
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(
                        color:
                            Theme.of(context).primaryTextTheme.headline1.color,
                        width: 2.0,
                      ),
                    ),
                  ),
                  child: Text(
                    'ABOUT',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Theme.of(context).primaryTextTheme.headline1.color,
                      fontSize: 20,
                      fontFamily: 'Montserrat',
                      letterSpacing: 2,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5),
              InkWell(
                  onTap: () {
                    navKey.currentState.pushNamed(routeWork);
                  },
                  child: Container(
                    padding: EdgeInsets.fromLTRB(50, 5, 50, 5),
                    width: 200,
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
                    child: Text(
                      'WORK',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color:
                            Theme.of(context).primaryTextTheme.headline1.color,
                        fontSize: 20,
                        fontFamily: 'Montserrat',
                        letterSpacing: 2,
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
