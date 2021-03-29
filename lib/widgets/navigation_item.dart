import 'package:flutter/material.dart';
import 'package:explore/routes/routes.dart';

class NavigationItem extends StatelessWidget {
  final String routeName;

  const NavigationItem({
    @required this.routeName,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        navKey.currentState.pushNamed(routeName);
      },
    );
  }
}
