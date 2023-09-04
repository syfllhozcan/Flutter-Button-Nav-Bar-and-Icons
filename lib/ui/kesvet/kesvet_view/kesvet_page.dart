import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class KesvetPage extends StatelessWidget {
  const KesvetPage({super.key});

  @override
  Widget build(BuildContext context) {
    //double w = MediaQuery.of(context).size.width;
    //double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xfff1f1f1),
      appBar: AppBar(
        backgroundColor: const Color(0xfff1f1f1),
        title: Image.asset(
          "assets/images/logo_beetinq.png",
          height: 28,
          fit: BoxFit.cover,
        ),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios_sharp,
            color: Colors.black87,
            size: 20,
          ),
        ),
        actions: [
          InkWell(
            child: SvgPicture.asset(
              "assets/icons/notification1.svg",
              height: 23,
            ),
          ),
          const SizedBox(width: 15),
          InkWell(
            child: SvgPicture.asset(
              "assets/icons/menu2.svg",
              height: 18,
            ),
          ),
          /*
          const SizedBox(width: 5),
          InkWell(
            child: SvgPicture.asset(
              "assets/icons/menu2.svg",
              height: 18,
              color: Colors.black54,
            ),
          ),
          */
          const SizedBox(width: 15),
        ],
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Row(
              children: [
                Text(
                  "Etkinlikleri Keşfet",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Spacer(),
                Text(
                  "Tümü",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 240,
            child: Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 5),
                itemCount: 8,
                itemBuilder: (context, index) => Container(
                  margin: const EdgeInsets.only(left: 10, bottom: 5, right: 10),
                  width: 260,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        blurRadius: 10,
                        offset: const Offset(0, 10),
                      ),
                    ],
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                          ),
                          child: Image.asset(
                            "assets/images/fuar1.jpg",
                            fit: BoxFit.fitWidth,
                            height: 110,
                            width: 260,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 8),
                          child: const Text(
                            "Uluslarası Asansör Fuarı",
                            style: TextStyle(
                              fontSize: 21,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset("assets/icons/time.svg",
                                        height: 16),
                                    const SizedBox(width: 10),
                                    const AutoSizeText(
                                      maxFontSize: 14,
                                      "25 - 28 Mart    09:30 - 21:30",
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                        "assets/icons/location.svg",
                                        height: 16),
                                    const SizedBox(width: 10),
                                    AutoSizeText(
                                      maxFontSize: 14,
                                      "İstanbul, Türkiye",
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    SvgPicture.asset("assets/icons/person1.svg",
                                        height: 16),
                                    const SizedBox(width: 10),
                                    AutoSizeText(
                                      maxFontSize: 14,
                                      "12637 Katılım",
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 5),
                              ],
                            ),
                          ),
                        ),
                      ]),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Row(
              children: [
                Text(
                  "Toplantılarım",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Spacer(),
                Text(
                  "Tümü",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              itemCount: 8,
              itemBuilder: (context, index) => Container(
                padding: const EdgeInsets.all(10),
                width: 86,
                margin: const EdgeInsets.only(left: 0, bottom: 15, right: 0),
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      blurRadius: 10,
                      offset: const Offset(0, 10),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      width: 90,
                      decoration: BoxDecoration(
                        color: const Color(0xffd6d8fe),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "12 Nis 22",
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            "13:30",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            "14:45",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width - 150,
                          child: Text(
                            "Etkili İletişim Sanatı Eğitimi",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SvgPicture.asset(
                              "assets/icons/location.svg",
                              height: 16,
                              width: 16,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width - 166,
                              child: Text(
                                "AKM Konferans Salonu",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 55),
        ],
      ),
    );
  }
}
