import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:explore/routes/router_generator.dart';
import 'package:explore/routes/routes.dart';
import 'screens/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return DynamicTheme(
      defaultBrightness: Brightness.light,
      data: (brightness) {
        return brightness == Brightness.light
            ? ThemeData(
                primarySwatch: Colors.blueGrey,
                backgroundColor: Color(0xFFFAF8D9),
                cardColor: Color(0xFFFAF8D9),
                primaryTextTheme: TextTheme(
                  button: TextStyle(
                    color: Colors.blueGrey,
                    decorationColor: Colors.blueGrey[300],
                  ),
                  subtitle2: TextStyle(
                    color: Colors.blueGrey[900],
                  ),
                  subtitle1: TextStyle(
                    color: Colors.black,
                  ),
                  headline1: TextStyle(color: Colors.blueGrey[800]),
                ),
                bottomAppBarColor: Color(0xFFFAF8D9),
                iconTheme: IconThemeData(color: Colors.blueGrey),
                brightness: brightness,
              )
            : ThemeData(
                primarySwatch: Colors.blueGrey,
                backgroundColor: Colors.blueGrey[900],
                cardColor: Colors.blueGrey[900],
                primaryTextTheme: TextTheme(
                  button: TextStyle(
                    color: Colors.blueGrey[200],
                    decorationColor: Colors.blueGrey[50],
                  ),
                  subtitle2: TextStyle(
                    color: Colors.white,
                  ),
                  subtitle1: TextStyle(
                    color: Colors.blueGrey[300],
                  ),
                  headline1: TextStyle(
                    color: Colors.white70,
                  ),
                ),
                bottomAppBarColor: Colors.blueGrey[900],
                iconTheme: IconThemeData(color: Colors.blueGrey[200]),
                brightness: brightness,
              );
      },
      themedWidgetBuilder: (context, data) => MaterialApp(
        title: 'Portfolio-UI',
        theme: data,
        builder: (_, child) => HomePage(
          child: child,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: routeIndex,
        navigatorKey: navKey,
        onGenerateRoute: RouteGenerator.generateRoute,
      ),
    );
  }
}
