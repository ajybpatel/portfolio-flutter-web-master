import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:explore/widgets/web_scrollbar.dart';
import 'package:explore/widgets/explore_drawer.dart';
import 'package:explore/widgets/responsive.dart';
import 'package:explore/widgets/top_bar_contents.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final Widget child;
  static const String route = '/';
  const HomePage({@required this.child});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController _scrollController;
  double _scrollPosition = 0;
  double _opacity = 0;

  _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: ResponsiveWidget.isSmallScreen(context)
          ? AppBar(
              leading: Builder(
                builder: (BuildContext context) {
                  return IconButton(
                      icon: const Icon(Icons.menu_sharp),
                      color: Theme.of(context).iconTheme.color,
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      });
                },
              ),
              backgroundColor: Theme.of(context).backgroundColor,
              elevation: 0,
              centerTitle: true,
              actions: [
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
                    print(Theme.of(context).brightness);
                  },
                ),
              ],
              title: Text(
                'YOUR NAME',
                style: TextStyle(
                  color: Theme.of(context).primaryTextTheme.headline1.color,
                  fontSize: 20,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 2,
                ),
              ),
            )
          : PreferredSize(
              preferredSize: Size(screenSize.width, 1000),
              child: TopBarContents(_opacity),
            ),
      drawer: ExploreDrawer(),
      body: WebScrollbar(
        color: Colors.blueGrey,
        backgroundColor: Colors.blueGrey.withOpacity(0.3),
        width: 10,
        heightFraction: 0.3,
        controller: _scrollController,
        child: Column(
          children: [Expanded(child: widget.child)],
        ),
      ),
    );
  }
}
