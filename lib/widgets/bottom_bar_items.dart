import 'package:button_nav_bar/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomBarItem extends StatelessWidget {
  const BottomBarItem(this.icon, this.title,
      {super.key,
      this.onTap,
      this.color = Colors.grey,
      this.activeColor = primary,
      this.isActive = false,
      this.isNotified = false});
  final String icon;
  final String title;
  final Color color;
  final Color activeColor;
  final bool isNotified;
  final bool isActive;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        child: Stack(alignment: Alignment.center, children: <Widget>[
          Container(
            padding: const EdgeInsets.all(7),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: isActive ? Colors.white.withOpacity(.1) : Colors.transparent,
            ),
            child: SvgPicture.asset(
              icon,
              color: isActive ? activeColor : Colors.white70,
              width: 25,
              height: 25,
            ),
          ),
          Positioned(
              bottom: -8,
              child: Icon(
                Icons.arrow_drop_up,
                size: 20.0,
                color: isActive ? activeColor : Colors.transparent,
              )),
        ]),
      ),
    );
  }
}
