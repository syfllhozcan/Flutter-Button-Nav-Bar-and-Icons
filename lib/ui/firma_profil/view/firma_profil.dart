import 'package:button_nav_bar/ui/direct_message/view/direct_message_home.dart';
import 'package:button_nav_bar/ui/firma_profil/view/firma_profil.dart';
import 'package:button_nav_bar/ui/meeting/view/meeting.dart';
import 'package:button_nav_bar/ui/notes/view/notes_page.dart';
import 'package:button_nav_bar/ui/profil/view/profile.dart';

import 'package:button_nav_bar/ui/anasayfa/view/anasyfa.dart';
import 'package:button_nav_bar/widgets/box_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FirmaProfil extends StatelessWidget {
  FirmaProfil({super.key});

  @override
  Widget build(BuildContext context) {
    //ComplaintViewModel  _complaintViewModel = Provider.of<ComplaintViewModel>(context);
    return Scaffold(
      backgroundColor: const Color(0xfff1f1f1),
      appBar: AppBar(
        backgroundColor: const Color(0xfff1f1f1),
        title: const Text(
          "Firma Profili",
          style: TextStyle(
            fontSize: 16,
            color: Colors.black87,
            //fontStyle: FontStyle.italic,
          ),
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
            size: 23,
          ),
        ),
        actions: [
          InkWell(
            onTap: () {
              showDialog(
                context: context,
                //barrierDismissible: false,
                builder: (BuildContext context) {
                  return AlertDialog(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    contentPadding: const EdgeInsets.all(0),
                    title: null,
                    content: Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        color: Colors.white,
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 15),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: const Color(0xfff1f1f1),
                                  borderRadius: BorderRadius.circular(50),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.6),
                                      blurRadius: 10,
                                      offset: const Offset(0, 10),
                                    ),
                                  ],
                                ),
                                child: CircleAvatar(
                                  backgroundColor: Colors.grey[800],
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Image.asset(
                                      "assets/images/profile.jpg",
                                      height: 100,
                                      width: 100,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              InkWell(
                                onTap: () => Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => Profile(),
                                  ),
                                ),
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 12,
                                    vertical: 6,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(6),
                                    border: Border.all(
                                      width: 1,
                                      color: Colors.black87,
                                    ),
                                  ),
                                  child: Text(
                                    "Seyfullah Özcan",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontStyle: FontStyle.italic,
                                      color: Colors.black87,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              /*
                      Container(
                        padding: const EdgeInsets.all(8),
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: const Color(0xFF5A60FF),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Text(
                          "Profili Görüntüle",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      */
                              const SizedBox(
                                height: 20,
                              ),
                              SingleChildScrollView(
                                  child: Column(children: [
                                InkWell(
                                  onTap: () => Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => Anasayfa(),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.all(8),
                                        decoration: BoxDecoration(
                                          color: const Color(0xfff1f1f1),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: SizedBox(
                                          height: 23,
                                          width: 23,
                                          child: SvgPicture.asset(
                                            "assets/icons/bitconnect.svg",
                                            //icon,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 15, horizontal: 15),
                                        child: Text(
                                          'Anasayfa',
                                          //text,
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FontStyle.italic,
                                            color: Colors.grey.shade800,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Align(
                                          alignment: Alignment.centerRight,
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(horizontal: 8),
                                                  child: Icon(
                                                    Icons
                                                        .keyboard_arrow_right_sharp,
                                                    size: 23,
                                                  ))
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                        color: const Color(0xfff1f1f1),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: SizedBox(
                                        height: 23,
                                        width: 23,
                                        child: SvgPicture.asset(
                                          "assets/icons/bitconnect.svg",
                                          //icon,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 15, horizontal: 15),
                                      child: Text(
                                        'Takvim',
                                        //text,
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          fontStyle: FontStyle.italic,
                                          color: Colors.grey.shade800,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Align(
                                        alignment: Alignment.centerRight,
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 8),
                                                child: Icon(
                                                  Icons
                                                      .keyboard_arrow_right_sharp,
                                                  size: 23,
                                                ))
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                        color: const Color(0xfff1f1f1),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: SizedBox(
                                        height: 23,
                                        width: 23,
                                        child: SvgPicture.asset(
                                          "assets/icons/bitconnect.svg",
                                          //icon,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 15, horizontal: 15),
                                      child: Text(
                                        'Bağlantılar',
                                        //text,
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          fontStyle: FontStyle.italic,
                                          color: Colors.grey.shade800,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Align(
                                        alignment: Alignment.centerRight,
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 8),
                                                child: Icon(
                                                  Icons
                                                      .keyboard_arrow_right_sharp,
                                                  size: 23,
                                                ))
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                        color: const Color(0xfff1f1f1),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: SizedBox(
                                        height: 23,
                                        width: 23,
                                        child: SvgPicture.asset(
                                          "assets/icons/bitconnect.svg",
                                          //icon,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 15, horizontal: 15),
                                      child: Text(
                                        'Mesajlar',
                                        //text,
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          fontStyle: FontStyle.italic,
                                          color: Colors.grey.shade800,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Align(
                                        alignment: Alignment.centerRight,
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 8),
                                                child: Icon(
                                                  Icons
                                                      .keyboard_arrow_right_sharp,
                                                  size: 23,
                                                ))
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                        color: const Color(0xfff1f1f1),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: SizedBox(
                                        height: 23,
                                        width: 23,
                                        child: SvgPicture.asset(
                                          "assets/icons/bitconnect.svg",
                                          //icon,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 15, horizontal: 15),
                                      child: Text(
                                        'QR Kod Tarayıcı',
                                        //text,
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          fontStyle: FontStyle.italic,
                                          color: Colors.grey.shade800,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Align(
                                        alignment: Alignment.centerRight,
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 8),
                                                child: Icon(
                                                  Icons
                                                      .keyboard_arrow_right_sharp,
                                                  size: 23,
                                                ))
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                        color: const Color(0xfff1f1f1),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: SizedBox(
                                        height: 23,
                                        width: 23,
                                        child: SvgPicture.asset(
                                          "assets/icons/bitconnect.svg",
                                          //icon,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 15, horizontal: 15),
                                      child: Text(
                                        'Mağaza',
                                        //text,
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          fontStyle: FontStyle.italic,
                                          color: Colors.grey.shade800,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Align(
                                        alignment: Alignment.centerRight,
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 8),
                                                child: Icon(
                                                  Icons
                                                      .keyboard_arrow_right_sharp,
                                                  size: 23,
                                                ))
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                        color: const Color(0xfff1f1f1),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: SizedBox(
                                        height: 23,
                                        width: 23,
                                        child: SvgPicture.asset(
                                          "assets/icons/bitconnect.svg",
                                          //icon,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 15, horizontal: 15),
                                      child: Text(
                                        'Güvenli Çıkış',
                                        //text,
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          fontStyle: FontStyle.italic,
                                          color: Colors.grey.shade800,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Align(
                                        alignment: Alignment.centerRight,
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 8),
                                                child: Icon(
                                                  Icons
                                                      .keyboard_arrow_right_sharp,
                                                  size: 23,
                                                ))
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ])),
                            ]),
                      ),
                    ),
                  );
                },
              );
            },
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 18,
                horizontal: 20,
              ),
              child: SvgPicture.asset("assets/icons/menu2.svg"),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: const Color(0xfff1f1f1),
          child: Column(
            children: [
              //Profil resim, isim, düzenleme icon
              Container(
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.6),
                            blurRadius: 10,
                            offset: const Offset(0, 10),
                          ),
                        ],
                      ),
                      child: CircleAvatar(
                        backgroundColor: Colors.grey[800],
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(60),
                          child: Image.asset(
                            "assets/images/p.jpg",
                            height: 120,
                            width: 120,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    /*const SizedBox(
                      width: 15,
                    ),*/
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Pindubi",
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(0),
                      child: Text(
                        "Mobile App",
                        style: TextStyle(
                          fontSize: 14,
                          fontStyle: FontStyle.italic,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                    const SizedBox(height: 6),
                    Container(
                      padding: const EdgeInsets.all(0),
                      child: Text(
                        "ornekmail@gmail.com",
                        style: TextStyle(
                          fontSize: 14,
                          fontStyle: FontStyle.italic,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    /*
                    Container(
                      padding: const EdgeInsets.all(0),
                      child: Text(
                        "05372345678",
                        style: TextStyle(
                          fontSize: 14,
                          fontStyle: FontStyle.italic,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    */
                  ],
                ),
              ),
              //Toplantı, Bağlantı, Mesaj
              Container(
                margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 70,
                        //width: 210,
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 15),
                        //margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              blurRadius: 10,
                              offset: const Offset(0, 10),
                            ),
                          ],
                        ),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    '18',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.italic,
                                      color: Colors.grey.shade800,
                                    ),
                                  ),
                                  /*SizedBox(
                        height: 20,
                        width: 20,
                        child: SvgPicture.asset(
                          "assets/icons/marker.svg",
                        ),
                      ),*/
                                  Text(
                                    'Toplantı',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.italic,
                                      color: Colors.grey.shade800,
                                    ),
                                  ),
                                ],
                              ),
                              const VerticalDivider(
                                color: Colors.grey,
                                endIndent: 10,
                                indent: 10,
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    '7',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.italic,
                                      color: Colors.grey.shade800,
                                    ),
                                  ),
                                  /*SizedBox(
                        height: 22,
                        width: 22,
                        child: SvgPicture.asset(
                          "assets/icons/profile.svg",
                        ),
                      ),*/
                                  Text(
                                    "Bağlantı",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.italic,
                                      color: Colors.grey.shade800,
                                    ),
                                  ),
                                ],
                              ),
                              /*const VerticalDivider(
                    color: Colors.grey,
                    endIndent: 10,
                    indent: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: 20,
                        width: 20,
                        child: SvgPicture.asset(
                          "assets/icons/bookmark.svg",
                        ),
                      ),
                      Text(
                        "8",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          color: Colors.grey.shade800,
                        ),
                      ),
                    ],
                  ),
                */
                            ]),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    InkWell(
                      onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => DirectMessageHomePage(),
                        ),
                      ),
                      child: Container(
                        height: 70,
                        //width: double.infinity,
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 15),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              blurRadius: 10,
                              offset: const Offset(0, 10),
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              height: 22,
                              width: 22,
                              child: SvgPicture.asset(
                                "assets/icons/message-svgrepo-com.svg",
                              ),
                            ),
                            Text(
                              "Mesaj",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                                color: Colors.grey.shade800,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //heştekler
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                //padding: EdgeInsets.symmetric(horizontal: 10),
                child: Wrap(alignment: WrapAlignment.center, children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    margin:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                    decoration: BoxDecoration(
                      //color:const Color(0xfff1f1f1),
                      //color:const Color(0xffe8daef),
                      borderRadius: BorderRadius.circular(15),
                      /*boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          blurRadius: 10,
                          offset: const Offset(0, 10),
                        ),
                      ],*/
                    ),
                    child: Text(
                      "#yazılım",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                    margin:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                    decoration: BoxDecoration(
                      //color: Colors.white,
                      //color: const Color(0xffd5f5e3),
                      borderRadius: BorderRadius.circular(15),
                      /*boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          blurRadius: 10,
                          offset: const Offset(0, 10),
                        ),
                      ],*/
                    ),
                    child: Text(
                      "#teknoloji",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                    margin:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                    decoration: BoxDecoration(
                      //color: Colors.white,
                      //color: const Color(0xfffcf3cf),
                      borderRadius: BorderRadius.circular(15),
                      /*boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          blurRadius: 10,
                          offset: const Offset(0, 10),
                        ),
                      ],*/
                    ),
                    child: Text(
                      "#yapay zeka",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                    margin:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                    decoration: BoxDecoration(
                      //color: Colors.white,
                      //color: const Color(0xfffcf3cf),
                      borderRadius: BorderRadius.circular(15),
                      /*boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          blurRadius: 10,
                          offset: const Offset(0, 10),
                        ),
                      ],*/
                    ),
                    child: Text(
                      "#app",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ]),
              ),
              //3 nokta işareti
              SvgPicture.asset(
                "assets/icons/more-horizontal.svg",
                height: 20,
              ),
              //Hakkımda
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Text(
                  "Hakkımda kısmı, kısaca Lipsum, masaüstü yayıncılık ve basın yayın sektöründe kullanılan",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    //fontWeight: FontWeight.w500,
                    color: Colors.black87,
                    wordSpacing: 3,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              //alt kutular notlar toplantılar
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => NotesPage(),
                        ),
                      ),
                      child: const BoxData(
                        color: Color(0xff96d1ee),
                        icon: "assets/icons/sort.svg",
                        text: "Notlarım",
                        //rota: NotesPage(),
                      ),
                    ),
                    InkWell(
                      onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Meeting(),
                        ),
                      ),
                      child: const BoxData(
                        color: Color(0xfff2ba7b),
                        icon: "assets/icons/bitconnect.svg",
                        text: "Toplantı",
                        //rota: Meeting(),
                      ),
                    ),
                    //Mavi Kutu
                    /*Container(
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 20),
                      decoration: BoxDecoration(
                        color: const Color(0xff96d1ee),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            blurRadius: 10,
                            offset: const Offset(0, 10),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: SizedBox(
                              height: 23,
                              width: 23,
                              child: SvgPicture.asset(
                                "assets/icons/sort.svg",
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            child: Text(
                              'Notlarım',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                                color: Colors.grey.shade800,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                '17  Data',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.grey.shade800,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: SizedBox(
                                  height: 20,
                                  width: 20,
                                  child: SvgPicture.asset(
                                    "assets/icons/right-arrow.svg",
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    */
                    //Turuncu Kutu
                    /*
                    Container(
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 20),
                      decoration: BoxDecoration(
                        color: const Color(0xfff2ba7b),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            blurRadius: 10,
                            offset: const Offset(0, 10),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: SizedBox(
                              height: 23,
                              width: 23,
                              child: SvgPicture.asset(
                                "assets/icons/bitconnect.svg",
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            child: Text(
                              'Toplantı',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                                color: Colors.grey.shade800,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                '48  Data',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.grey.shade800,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: SizedBox(
                                  height: 20,
                                  width: 20,
                                  child: SvgPicture.asset(
                                    "assets/icons/right-arrow.svg",
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    */
                  ],
                ),
              ),
              //Profili görüntüleyenler
              Container(
                padding: const EdgeInsets.all(15),
                child: const Center(
                  child: Text(
                    "Profilinizi görüntüleyen kimse yok",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black87,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



/*
// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FirmaProfil extends StatefulWidget {
  FirmaProfil({super.key});

  @override
  State<FirmaProfil> createState() => _FirmaProfilState();
}

class _FirmaProfilState extends State<FirmaProfil> {
  //TextEditingController _soyad = TextEditingController();
  
  String selectedValue = 'Organizasyon Türü';  // Başlangıçta seçili değer
 
  List<String> dropdownValues = [
    'Organizasyon Türü',
    'Şahıs Şirketi',
    'Limited Şirket',
    'Anonim Şirket',
    'Anonim Şirket (Halka Açık)',
    'Holding',
    'Holding (Halka Açık)',
    'Diğer Ticari Ortaklıklar',
    'Oda veya Borsa',
    'Sivil Toplum Kuruluşu',
    'Üniversite',
    'Kamu Kurumu',
    'Siyasi Parti',
    'Diğer',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff1f1f1),
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios_sharp,
            color: Colors.black87,
            size: 23,
          ),
        ),
        backgroundColor: const Color(0xfff1f1f1),
        elevation: 0,
        title: Image.asset(
          "assets/images/logo_beetinq.png",
          height: 30,
          fit: BoxFit.cover,
        ),

        /*
        title: Text(
          '',
          style: TextStyle(
            color: Colors.black87,
            fontSize: 18,
          ),
        ),
        */
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            //-----------------------------Üst Alan Boşluğu
            const SizedBox(
              height: 20,
            ),
            //-----------------------------İşletme Oluştur Text
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'İşletme Oluştur',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            //-----------------------------İşletme Adı
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 8),
              child: Row(children: [
                const SizedBox(width: 10),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(top: 0, bottom: 0),
                    padding: const EdgeInsets.all(0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black12,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          blurRadius: 10,
                          offset: const Offset(0, 10),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(width: 10),
                        SvgPicture.asset(
                          "assets/icons/build.svg",
                          height: 20,
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: TextField(
                            textAlign: TextAlign.left,
                            expands: false,
                            onChanged: (value) {},
                            style: const TextStyle(fontSize: 16),
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: "İşletme Adı..",
                              contentPadding: EdgeInsets.all(0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                /*
                InkWell(
                  onTap: () {},
                  child: Icon(
                    FontAwesomeIcons.filter,
                    color: theme.primaryColor,
                    size: 20,
                  ),
                ),
                */
              ]),
            ),
            //-----------------------------Sektörler
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 8),
              child: Row(children: [
                const SizedBox(width: 10),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(top: 0, bottom: 0),
                    padding: const EdgeInsets.all(0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black12,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          blurRadius: 10,
                          offset: const Offset(0, 10),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(width: 10),
                        SvgPicture.asset(
                          "assets/icons/sektor.svg",
                          height: 28,
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: TextField(
                            textAlign: TextAlign.left,
                            expands: false,
                            onChanged: (value) {},
                            style: const TextStyle(fontSize: 16),
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: "Sektörler..",
                              contentPadding: EdgeInsets.all(0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                /*
                InkWell(
                  onTap: () {},
                  child: Icon(
                    FontAwesomeIcons.filter,
                    color: theme.primaryColor,
                    size: 20,
                  ),
                ),
                */
              ]),
            ),
            //-----------------------------Organizasyon Türü
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    blurRadius: 10,
                    offset: const Offset(0, 10),
                  ),
                ],
              ),
              child: DropdownButton<String>(
                value: selectedValue,
                icon: const Icon(Icons.arrow_drop_down),
                iconSize: 28,
                elevation: 16,
                isExpanded: true,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                ),
                underline: const SizedBox(),
                onChanged: (newValue) {
                  setState(() {
                    selectedValue = newValue!;
                  });
                },
                items: dropdownValues
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
            //-----------------------------3 nokta işareti svg
            SvgPicture.asset(
              "assets/icons/more-horizontal.svg",
              height: 20,
            ),
            //-----------------------------Hakkında
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 8),
              child: Row(children: [
                const SizedBox(width: 10),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(top: 0, bottom: 0),
                    padding: const EdgeInsets.all(0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black12,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          blurRadius: 10,
                          offset: const Offset(0, 10),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(width: 10),
                        SvgPicture.asset(
                          "assets/icons/info.svg",
                          height: 20,
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: TextField(
                            textAlign: TextAlign.left,
                            expands: false,
                            onChanged: (value) {},
                            style: const TextStyle(fontSize: 16),
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: "Hakkında..",
                              contentPadding: EdgeInsets.all(0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                /*
                InkWell(
                  onTap: () {},
                  child: Icon(
                    FontAwesomeIcons.filter,
                    color: theme.primaryColor,
                    size: 20,
                  ),
                ),
                */
              ]),
            ),
            //-----------------------------Kurumsal Telefon
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 8),
              child: Row(children: [
                const SizedBox(width: 10),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(top: 0, bottom: 0),
                    padding: const EdgeInsets.all(0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black12,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          blurRadius: 10,
                          offset: const Offset(0, 10),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(width: 10),
                        SvgPicture.asset(
                          "assets/icons/phone.svg",
                          height: 20,
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: TextField(
                            textAlign: TextAlign.left,
                            expands: false,
                            onChanged: (value) {},
                            style: const TextStyle(fontSize: 16),
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: "Kurumsal Telefon..",
                              contentPadding: EdgeInsets.all(0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                /*
                InkWell(
                  onTap: () {},
                  child: Icon(
                    FontAwesomeIcons.filter,
                    color: theme.primaryColor,
                    size: 20,
                  ),
                ),
                */
              ]),
            ),
            //-----------------------------Kurumsal Mail
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 8),
              child: Row(children: [
                const SizedBox(width: 10),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(top: 0, bottom: 0),
                    padding: const EdgeInsets.all(0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black12,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          blurRadius: 10,
                          offset: const Offset(0, 10),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(width: 10),
                        SvgPicture.asset(
                          "assets/icons/message.svg",
                          height: 20,
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: TextField(
                            textAlign: TextAlign.left,
                            expands: false,
                            onChanged: (value) {},
                            style: const TextStyle(fontSize: 16),
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: "Kurumsal Mail..",
                              contentPadding: EdgeInsets.all(0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                /*
                InkWell(
                  onTap: () {},
                  child: Icon(
                    FontAwesomeIcons.filter,
                    color: theme.primaryColor,
                    size: 20,
                  ),
                ),
                */
              ]),
            ),
            //-----------------------------Konum Oluştur Search
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 8),
              child: Row(children: [
                const SizedBox(width: 10),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(top: 0, bottom: 0),
                    padding: const EdgeInsets.all(0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black12,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          blurRadius: 10,
                          offset: const Offset(0, 10),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(width: 10),
                        SvgPicture.asset(
                          "assets/icons/location.svg",
                          height: 20,
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: TextField(
                            textAlign: TextAlign.left,
                            expands: false,
                            onChanged: (value) {},
                            style: const TextStyle(fontSize: 16),
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: "Konum..",
                              contentPadding: EdgeInsets.all(0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                /*
                InkWell(
                  onTap: () {},
                  child: Icon(
                    FontAwesomeIcons.filter,
                    color: theme.primaryColor,
                    size: 20,
                  ),
                ),
                */
              ]),
            ),

            //-----------------------------Onay Buttonu
             InkWell(
              child: Container(
                width: double.infinity,
                padding:const EdgeInsets.all(15),
                margin:const EdgeInsets.symmetric(horizontal: 20,vertical: 10,),
                decoration: BoxDecoration(
                  color: const Color(0xFF5A60FF),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    blurRadius: 10,
                    offset: const Offset(0, 10),
                  ),
                ],
                  ),
                child:const Center(
                  child: Text(
                    'Oluştur',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
            ),
             //-----------------------------En Alt Boşluk
            const SizedBox(
              height: 75,
            ),

          ],
        ),
      ),
    );
  }
}
*/