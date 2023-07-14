import 'package:button_nav_bar/pages/discovery.dart';
import 'package:button_nav_bar/pages/favorite.dart';
import 'package:button_nav_bar/pages/home.dart';
import 'package:button_nav_bar/pages/profile.dart';
import 'package:button_nav_bar/theme/colors.dart';
import 'package:button_nav_bar/widgets/bottom_bar_items.dart';
import 'package:flutter/material.dart';


class RootApp extends StatefulWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> with TickerProviderStateMixin {
  int activeTab = 1;
  List barItems = [
        {
      "icon": "assets/icons/home.svg",
      "active_icon": "assets/icons/home.svg",
      "page": const Home(),
      "title": ""
    },
    {
      "icon": "assets/icons/navigation.svg",
      "active_icon": "assets/icons/navigation.svg",
      "page": const Discovery(),
      "title": ""
    },
    {
      "icon": "assets/icons/heart.svg",
      "active_icon": "assets/icons/navigation.svg",
      "page": const Favorite(),
      "title": ""
    },
    {
      "icon": "assets/icons/profile.svg",
      "active_icon": "assets/icons/profile.svg",
      "page": const Profile(),
      "title": ""
    },
  ];
//====== set animation=====
  late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: 500),
    vsync: this,
  );
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.fastOutSlowIn,
  );

  @override
  void initState() {
    super.initState();
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.stop();
    _controller.dispose();
    super.dispose();
  }

  animatedPage(page) {
    return FadeTransition(child: page, opacity: _animation);
  }

  void onPageChanged(int index) {
    _controller.reset();
    setState(() {
      activeTab = index;
    });
    _controller.forward();
  }

//====== end set animation=====

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBgColor,
      body: getBarPage(),
      // bottomNavigationBar: getBottomBar1()
      floatingActionButton: getBottomBar(),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
    );
  }

  Widget getBarPage() {
    return IndexedStack(
        index: activeTab,
        children: List.generate(
            barItems.length, (index) => animatedPage(barItems[index]["page"])));
  }

  Widget getBottomBar() {
    return Container(
      height: 55,
      width: double.infinity,
      margin: const EdgeInsets.fromLTRB(25, 0, 25, 15),
      decoration: BoxDecoration(
        color: bottomBarColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 10,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: List.generate(
              barItems.length,
              (index) => BottomBarItem(
                    activeTab == index
                        ? barItems[index]["active_icon"]
                        : barItems[index]["icon"],
                    "",
                    isActive: activeTab == index,
                    activeColor: primary,
                    onTap: () {
                      onPageChanged(index);
                    },
                  ))),
    );
  }
}