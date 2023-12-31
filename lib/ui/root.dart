import 'package:button_nav_bar/ui/activity_home/view/activity_home.dart';
import 'package:button_nav_bar/ui/create_meeting/view/create_meeting.dart';
import 'package:button_nav_bar/ui/home/view/home.dart';
import 'package:button_nav_bar/ui/discover/discover/discover.dart';
import 'package:button_nav_bar/ui/profile/view/profile.dart';
//import 'package:button_nav_bar/theme/colors.dart';
import 'package:button_nav_bar/widgets/bottom_bar_items.dart';
import 'package:flutter/material.dart';

class RootApp extends StatefulWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> with TickerProviderStateMixin {
  int activeTab = 0;
  List barItems = [
    {
      "icon": "assets/icons/home.svg",
      "active_icon": "assets/icons/home.svg",
      "page": HomePage(),
      "title": ""
    },
    {
      "icon": "assets/icons/booking.svg",
      "active_icon": "assets/icons/booking.svg",
      "page": ActivityHomePage(),
      "title": ""
    },
    {
      "icon": "assets/icons/kesfet.svg", //navigation.svg
      "active_icon": "assets/icons/kesfet.svg",
      "page": DiscoverPage(),
      "title": ""
    },
    {
      "icon": "assets/icons/notification.svg",
      "active_icon": "assets/icons/notification.svg",
      "page": CreateMeetingPage(),
      "title": ""
    },
    {
      "icon": "assets/icons/profile.svg",
      "active_icon": "assets/icons/profile.svg",
      "page": Profile(),
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
      //backgroundColor: appBgColor,
      //backgroundColor: const Color(0xff34495e),
      backgroundColor: const Color(0xfff1f1f1),

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
        barItems.length,
        (index) => animatedPage(barItems[index]["page"]),
      ),
    );
  }

  Widget getBottomBar() {
    return Container(
      height: 55,
      width: double.infinity,
      margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      decoration: const BoxDecoration(
        //color: bottomBarColor,
        //color: const Color(0xFF5A60FF),
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        /*
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 10,
            offset: const Offset(0, 10),
          ),
        ],
        */
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
            activeColor: Colors.black,
            onTap: () {
              onPageChanged(index);
            },
          ),
        ),
      ),
    );
  }
}
