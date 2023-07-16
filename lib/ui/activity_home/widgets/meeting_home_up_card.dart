import 'package:flutter/material.dart';

class MeetingHomeUpCard extends StatelessWidget {
  const MeetingHomeUpCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFF5A60FF),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(children: [
        Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      "Doğu Anadolu İnovasyon Haftası",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "20 - 24 Nisan 2023 09:00-19:00",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "ELAZIĞ AKM",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: AssetImage(
                  "assets/images/logo.jpg",
                ),
                radius: 35,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          height: 50,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) => CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: AssetImage(
                "assets/images/logo.jpg",
              ),
              radius: 32,
            ),
          ),
        ),
      ]),
    );
  }
}
