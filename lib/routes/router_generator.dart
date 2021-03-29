import 'package:explore/screens/index.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:explore/routes/routes.dart';
import 'package:explore/screens/about_page.dart';
import 'package:explore/screens/work_page.dart';
import 'package:explore/screens/home_page.dart';



class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case routeHome:
        return MaterialPageRoute(builder: (_) => HomePage(child: Index()));
        break;
      case routeAbout:
        return MaterialPageRoute(builder: (_) => AboutPage());
        break;
      case routeWork:
        return MaterialPageRoute(builder: (_) => WorkPage());
        break;
       case routeIndex:
        return MaterialPageRoute(builder: (_) => Index());
        break;
      default: return null;
    }
  }
}
