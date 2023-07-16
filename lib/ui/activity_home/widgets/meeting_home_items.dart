import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MeetingHomeItems extends StatelessWidget {
  final String title;
  final String icon;
  //final String navigator;

  const MeetingHomeItems({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: null,
      child: Container(
        color: const Color(0xfff6f8f7),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              padding: const EdgeInsets.all(7),
              //margin: const EdgeInsets.only(top: 5, right: 10, bottom: 5, left:10),
              child: SvgPicture.asset(
                icon,
                height: 20.0,
                width: 20.0,
                allowDrawingOutsideViewBox: true,
                alignment: Alignment.center,
                // fit: BoxFit.contain,
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
