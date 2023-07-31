import 'package:button_nav_bar/ui/direct_message/view/direct_message_home.dart';
import 'package:button_nav_bar/ui/firma_profil/view/fima_profil.dart';
import 'package:button_nav_bar/ui/meeting/view/meeting.dart';
import 'package:button_nav_bar/ui/notes/view/notes_page.dart';
import 'package:button_nav_bar/ui/profil/view/profile.dart';
import 'package:button_nav_bar/widgets/box_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Profile extends StatelessWidget {
  Profile({super.key});

  @override
  Widget build(BuildContext context) {
    //ComplaintViewModel  _complaintViewModel = Provider.of<ComplaintViewModel>(context);
    return Scaffold(
      backgroundColor: const Color(0xfff1f1f1),
      appBar: AppBar(
        backgroundColor: const Color(0xfff1f1f1),
        title: const Text(
          "My Profile",
          style: TextStyle(
            fontSize: 18,
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
              // _buildSignOutButton(context), //Çıkış Butonu
              //_buildPfogilFoto(), //Profil Fotosu
              //Profil resim, isim, düzenleme icon
              Container(
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                /*decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.6),
                            blurRadius: 10,
                            offset: const Offset(0, 10),
                          ),
                        ],
                ),
                */
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(
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
                                  "assets/images/profile.jpg",
                                  height: 120,
                                  width: 120,
                                  fit: BoxFit.cover,
                                ),
                              )),
                        ),
                        Positioned(
                          right: 0,
                          bottom: 0,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.8),
                                  blurRadius: 10,
                                  offset: const Offset(0, 10),
                                ),
                              ],
                            ),
                            child: GestureDetector(
                              onTap: () {},
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 14,
                                child: SvgPicture.asset(
                                  "assets/icons/basic-camera.svg",
                                  height: 17,
                                  width: 17,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    /*const SizedBox(
                      width: 15,
                    ),*/
                    Column(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          child: Text(
                            "Seyfullah Özcan",
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          child: Text(
                            "seyfullah özcan",
                            style: TextStyle(
                              fontSize: 14,
                              fontStyle: FontStyle.italic,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        InkWell(
                          onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => FirmaProfil(),
                            ),
                          ),
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 5),
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
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/images/logo.jpg",
                                  height: 20,
                                  width: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text(
                                    "Sia Teknoloji",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontStyle: FontStyle.italic,
                                      color: Colors.black87,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 36,
                      width: 36,
                      //alignment: Alignment.bottomLeft,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        //color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            blurRadius: 10,
                            offset: const Offset(0, 10),
                          ),
                        ],
                      ),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        //radius: 14,
                        child: SvgPicture.asset(
                          "assets/icons/pencil.svg",
                          //"assets/icons/pen.svg",
                          height: 17,
                          width: 17,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //Toplantı, Bağlantı, Mesaj
              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
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

              //_buildCityNameLength(), //Şehir, Ad, Şikayet sayısı
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
                    const BoxData(
                      color: Color(0xff96d1ee),
                      icon: "assets/icons/sort.svg",
                      text: "Notlarım",
                      rota: NotesPage(),
                    ),
                    const BoxData(
                      color: Color(0xfff2ba7b),
                      icon: "assets/icons/bitconnect.svg",
                      text: "Toplantı",
                      rota: Meeting(),
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

  InkWell _buildSignOutButton(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Align(
        alignment: Alignment.topRight,
        child: Container(
          height: 40,
          width: 40,
          margin: const EdgeInsets.all(15),
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                blurRadius: 10,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: SvgPicture.asset(
            "assets/icons/logout.svg",
          ),
        ),
      ),
    );
  }

  Center _buildPfogilFoto() {
    return Center(
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(25),
            child: Container(
              height: 126,
              width: 126,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(63),
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
                      "assets/images/profile.jpg",
                      height: 120,
                      width: 120,
                      fit: BoxFit.cover,
                    ),
                  )),
            ),
          ),
          Positioned(
            right: 25,
            top: 25,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.8),
                    blurRadius: 10,
                    offset: const Offset(0, 10),
                  ),
                ],
              ),
              child: GestureDetector(
                onTap: () {},
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 14,
                  child: SvgPicture.asset(
                    "assets/icons/pencil.svg",
                    height: 17,
                    width: 17,
                    color: Colors.black87,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
/*
  Container _buildCityNameLength() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 70,
              //width: 210,
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
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
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
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
            
            child: Container(
              height: 70,
              //width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
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
    );
  }
*/
}



/*

import 'package:button_nav_bar/ui/activity_home/widgets/about_meeting.dart';
import 'package:button_nav_bar/ui/activity_home/widgets/meeting_home_items.dart';
import 'package:button_nav_bar/ui/activity_home/widgets/meeting_home_up_card.dart';
import 'package:flutter/material.dart';

class ActivityHome extends StatelessWidget {
  ActivityHome({super.key});

  //kullanılabilir
  List midleItems = [
    {
      "icon": "assets/icons/navigation.svg",
      //"page": const ControPanelPage(),
      "title": "Kontrol Paneli"
    },
    {
      "icon": "assets/icons/home.svg",
      //"page": const AnnouncementsPage(),
      "title": "Duyurular"
    },
    {
      "icon": "assets/icons/profile.svg",
      // "page": const EventSchedulePage(),
      "title": "Etkinlik Programı"
    },
    {
      "icon": "assets/icons/navigation.svg",
      // "page": const MyEventNotesPage(),
      "title": "Etkinlik Notlarım"
    },
    {
      "icon": "assets/icons/home.svg",
      // "page": const MyTalksPage(),
      "title": "Görüşmelerim"
    },
    {
      "icon": "assets/icons/home.svg",
      // "page": const SupportPage(),
      "title": "Destek"
    },
    {
      "icon": "assets/icons/profile.svg",
      // "page": const QuestionnairePage(),
      "title": "Anket"
    },
    {
      "icon": "assets/icons/profile.svg",
      // "page": const CompaniesPage(),
      "title": "Firmalar"
    },
    {
      "icon": "assets/icons/profile.svg",
      // "page": const ParticipantsPage(),
      "title": "Katılımcılar"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            color: Colors.black,
            icon: const Icon(Icons.arrow_back_ios_new),
            onPressed: () {
              // Sol ikon için tıklama işlemleri
            },
          ),
          actions: [
            IconButton(
              color: Colors.black,
              icon: const Icon(Icons.menu),
              onPressed: () {
                // Sağ ikon için tıklama işlemleri
              },
            ),
          ],
          title: Text(
            'Etkinlik Sonlandı',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            MeetingHomeUpCard(),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                    decoration: BoxDecoration(
                      color: const Color(0xfff6f8f7),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: midleItems.length,
                      itemBuilder: (context, index) => MeetingHomeItems(
                        title: midleItems[index]['title'],
                        icon: midleItems[index]['icon'],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  AboutMeeting(),
                  const SizedBox(
                    height: 70,
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
*/

