import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Anasayfa extends StatelessWidget {
  const Anasayfa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff1f1f1),
      appBar: AppBar(
        backgroundColor: const Color(0xfff1f1f1),
        title: Image.asset(
          "assets/images/logo_beetinq.png",
          height: 28,
          fit: BoxFit.cover,
        ),
        centerTitle: true,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios_sharp,
            color: Colors.black87,
            size: 18,
          ),
        ),
        actions: [
          InkWell(
            child: SvgPicture.asset(
              "assets/icons/menu2.svg",
              height: 18,
              width: 18,
            ),
          ),
          const SizedBox(width: 20),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: [
                //----------------------------Boşluk
                const SizedBox(
                  height: 30,
                ),
                //----------------------------Meeting Bilgiileri Text
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Meeting Bilgileri',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ),
                //---------------------------- İlk Liste
                Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    margin: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          blurRadius: 10,
                          offset: const Offset(0, 10),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Container(
                          color: Colors.white,
                          padding: const EdgeInsets.all(0),
                          margin: const EdgeInsets.symmetric(
                              horizontal: 0, vertical: 0),
                          child: Row(children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              margin: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 5),
                              decoration: BoxDecoration(
                                //color: Colors.white,
                                color: const Color(0xffE8DAEF),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: SvgPicture.asset(
                                "assets/icons/filter1.svg",
                                height: 20,
                                width: 20,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Kontrol Paneli',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black87,
                              ),
                            )
                          ]),
                        ),
                        Container(
                          color: Colors.white,
                          padding: EdgeInsets.all(0),
                          margin:
                              EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                          child: Row(children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              margin: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 5),
                              decoration: BoxDecoration(
                                //color: Colors.white,
                                color: Color(0xffD5F5E3),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: SvgPicture.asset(
                                "assets/icons/notification1.svg",
                                height: 20,
                                width: 20,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Duyurular',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black87,
                              ),
                            )
                          ]),
                        ),
                        Container(
                          color: Colors.white,
                          padding: EdgeInsets.all(0),
                          margin:
                              EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                          child: Row(children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              margin: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 5),
                              decoration: BoxDecoration(
                                //color: Colors.white,
                                color: Color(0xffD6EAF8),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: SvgPicture.asset(
                                "assets/icons/event.svg",
                                height: 20,
                                width: 20,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Etkinlik Programı',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black87,
                              ),
                            )
                          ]),
                        ),
                        Container(
                          color: Colors.white,
                          padding: EdgeInsets.all(0),
                          margin:
                              EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                          child: Row(children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              margin: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 5),
                              decoration: BoxDecoration(
                                //color: Colors.white,
                                color: Color(0xffFCF3CF),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: SvgPicture.asset(
                                "assets/icons/edit.svg",
                                height: 20,
                                width: 20,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Etkinlik Notlarım',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black87,
                              ),
                            )
                          ]),
                        ),
                        Container(
                          color: Colors.white,
                          padding: EdgeInsets.all(0),
                          margin:
                              EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                          child: Row(children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              margin: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 5),
                              decoration: BoxDecoration(
                                //color: Colors.white,
                                color: Color(0xffF2D7D5),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: SvgPicture.asset(
                                "assets/icons/handshake2.svg",
                                height: 20,
                                width: 20,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Görüşmelerim',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black87,
                              ),
                            )
                          ]),
                        ),
                        Container(
                          color: Colors.white,
                          padding: EdgeInsets.all(0),
                          margin:
                              EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                          child: Row(children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              margin: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 5),
                              decoration: BoxDecoration(
                                //color: Colors.white,
                                color: Color(0xffD5F5E3),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: SvgPicture.asset(
                                "assets/icons/support.svg",
                                height: 20,
                                width: 20,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Destek',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black87,
                              ),
                            )
                          ]),
                        ),
                        Container(
                          color: Colors.white,
                          padding: EdgeInsets.all(0),
                          margin:
                              EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                          child: Row(children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              margin: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 5),
                              decoration: BoxDecoration(
                                //color: Colors.white,
                                color: Color(0xffFCF3CF),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: SvgPicture.asset(
                                "assets/icons/operation-and-maintenance-center-execution-record-svgrepo-com.svg",
                                height: 20,
                                width: 20,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Anket',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black87,
                              ),
                            )
                          ]),
                        ),
                        Container(
                          color: Colors.white,
                          padding: EdgeInsets.all(0),
                          margin:
                              EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                          child: Row(children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              margin: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 5),
                              decoration: BoxDecoration(
                                //color: Colors.white,
                                color: Color(0xffE8DAEF),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: SvgPicture.asset(
                                "assets/icons/firma.svg",
                                height: 20,
                                width: 20,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Firmalar',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black87,
                              ),
                            )
                          ]),
                        ),
                        Container(
                          color: Colors.white,
                          padding: EdgeInsets.all(0),
                          margin:
                              EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                          child: Row(children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              margin: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 5),
                              decoration: BoxDecoration(
                                //color: Colors.white,
                                color: Color(0xffD6EAF8),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: SvgPicture.asset(
                                "assets/icons/person1.svg",
                                height: 20,
                                width: 20,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Katılımcılar',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black87,
                              ),
                            )
                          ]),
                        ),
                      ],
                    )),
                //----------------------------Boşluk
                const SizedBox(
                  height: 30,
                ),
                //----------------------------Activity Bilgileri Text
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Activity Bilgileri',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ),
                //---------------------------- İkinci Liste
                Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    margin: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          blurRadius: 10,
                          offset: const Offset(0, 10),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Container(
                          color: Colors.white,
                          padding: const EdgeInsets.all(0),
                          margin: const EdgeInsets.symmetric(
                              horizontal: 0, vertical: 0),
                          child: Row(children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              margin: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 5),
                              decoration: BoxDecoration(
                                //color: Colors.white,
                                color: const Color(0xffE8DAEF),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: SvgPicture.asset(
                                "assets/icons/filter1.svg",
                                height: 20,
                                width: 20,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Kontrol Paneli',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black87,
                              ),
                            )
                          ]),
                        ),
                        Container(
                          color: Colors.white,
                          padding: EdgeInsets.all(0),
                          margin:
                              EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                          child: Row(children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              margin: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 5),
                              decoration: BoxDecoration(
                                //color: Colors.white,
                                color: Color(0xffD5F5E3),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: SvgPicture.asset(
                                "assets/icons/notification1.svg",
                                height: 20,
                                width: 20,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Duyurular',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black87,
                              ),
                            )
                          ]),
                        ),
                        Container(
                          color: Colors.white,
                          padding: EdgeInsets.all(0),
                          margin:
                              EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                          child: Row(children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              margin: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 5),
                              decoration: BoxDecoration(
                                //color: Colors.white,
                                color: Color(0xffD6EAF8),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: SvgPicture.asset(
                                "assets/icons/event.svg",
                                height: 20,
                                width: 20,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Etkinlik Programı',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black87,
                              ),
                            )
                          ]),
                        ),
                        Container(
                          color: Colors.white,
                          padding: EdgeInsets.all(0),
                          margin:
                              EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                          child: Row(children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              margin: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 5),
                              decoration: BoxDecoration(
                                //color: Colors.white,
                                color: Color(0xffFCF3CF),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: SvgPicture.asset(
                                "assets/icons/edit.svg",
                                height: 20,
                                width: 20,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Etkinlik Notlarım',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black87,
                              ),
                            )
                          ]),
                        ),
                        Container(
                          color: Colors.white,
                          padding: EdgeInsets.all(0),
                          margin:
                              EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                          child: Row(children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              margin: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 5),
                              decoration: BoxDecoration(
                                //color: Colors.white,
                                color: Color(0xffF2D7D5),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: SvgPicture.asset(
                                "assets/icons/handshake2.svg",
                                height: 20,
                                width: 20,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Görüşmelerim',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black87,
                              ),
                            )
                          ]),
                        ),
                        Container(
                          color: Colors.white,
                          padding: EdgeInsets.all(0),
                          margin:
                              EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                          child: Row(children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              margin: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 5),
                              decoration: BoxDecoration(
                                //color: Colors.white,
                                color: Color(0xffD5F5E3),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: SvgPicture.asset(
                                "assets/icons/support.svg",
                                height: 20,
                                width: 20,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Destek',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black87,
                              ),
                            )
                          ]),
                        ),
                      ],
                    )),
                //---------------------------- Boşluk
                const SizedBox(
                  height: 30,
                ),
                //---------------------------- Diğer İşlemeler
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Diğer İşlemler',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ),
                //---------------------------- Alt Liste
                Container(
                    padding: EdgeInsets.all(0),
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                      //color: Color(0xfff7f7f7),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          blurRadius: 10,
                          offset: const Offset(0, 10),
                        ),
                      ],
                    ),
                    child: ListView(shrinkWrap: true, children: [
                      Container(
                        //color: Color(0xfff7f7f7),
                        color: Colors.white,
                        padding: EdgeInsets.all(0),
                        margin:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                        child: Row(children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              //color: Colors.white,
                              color: Color(0xffE8DAEF),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: SvgPicture.asset(
                              "assets/icons/setting-border.svg",
                              height: 20,
                              width: 20,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Ayarlar',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black87,
                            ),
                          )
                        ]),
                      ),
                      Container(
                        //color: Color(0xfff7f7f7),
                        color: Colors.white,
                        padding: EdgeInsets.all(0),
                        margin:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                        child: Row(children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              //color: Colors.white,
                              color: Color(0xffD5F5E3),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: SvgPicture.asset(
                              "assets/icons/logout.svg",
                              height: 20,
                              width: 20,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Çıkış Yap',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black87,
                            ),
                          )
                        ]),
                      ),
                    ])),
                //---------------------------- En Alt Boşluk
                const SizedBox(
                  height: 110,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
