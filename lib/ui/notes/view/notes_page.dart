import 'package:button_nav_bar/ui/profil/view/profile.dart';
import 'package:button_nav_bar/widgets/box_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NotesPage extends StatelessWidget {
  const NotesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xfff1f1f1),
        title: const Text(
          "Toplantı Sonlandı",
          style: TextStyle(
            fontSize: 18,
            color: Colors.black87,
            //fontStyle: FontStyle.italic,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        leading: InkWell(
          child: Container(
            padding: const EdgeInsets.all(18),
            child: SvgPicture.asset("assets/icons/angle-left.svg"),
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
      backgroundColor: const Color(0xfff1f1f1),
      body: Column(
        children: [
          //Üst box icon, toplantı, adı, tarih
          /*
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
              color: const Color(0xFF5A60FF),
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
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage(
                      "assets/images/logo.jpg",
                    ),
                    radius: 30,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Toplantı Adı",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        Icon(
                          Icons.access_time_filled_sharp,
                          color: Colors.white,
                          size: 18,
                        ),
                        Text(
                          " 26 Tem 23  -  22:00, 23:00",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
          */
          //list Spnsorlar veya katılımcılar
          /*
          Container(
            height: 80,
            margin: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) => Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      blurRadius: 10,
                      offset: const Offset(0, 10),
                    ),
                  ],
                ),
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage(
                    "assets/images/logo.jpg",
                  ),
                  radius: 30,
                ),
              ),
            ),
          ),
         */
          //Kutular
          /*
          Container(
            child: Wrap(
              children: [
                const BoxData(
                  color: Color(0xff96d1ee),
                  icon: "assets/icons/sort.svg",
                  text: "Sohbet",
                  rota: NotesPage(),
                ),
                const BoxData(
                  color: Color(0xfffd6e84),
                  icon: "assets/icons/sort.svg",
                  text: "Notlarım",
                  rota: NotesPage(),
                ),
                const BoxData(
                  //color: Color(0xffd1ee96),
                  color: Color(0xfffd8968),
                  icon: "assets/icons/sort.svg",
                  text: "Gönder",
                  rota: NotesPage(),
                ),
                const BoxData(
                  color: Color(0xfff2ba7b),
                  icon: "assets/icons/sort.svg",
                  text: "Kararlar",
                  rota: NotesPage(),
                ),
               /* const BoxData(
                  //color: Color(0xfff27bba),
                  color: Color(0xffffb866),
                  icon: "assets/icons/sort.svg",
                  text: "0 Dosya",
                  rota: NotesPage(),
                ),
                const BoxData(
                  color: Color(0xff77ccc1),
                  icon: "assets/icons/sort.svg",
                  text: "0 Anket",
                  rota: NotesPage(),
                ),
             */ 
            ],
            ),
          ),
          */
          InkWell(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Profile(),
              ),
            ),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                //color: color,
                borderRadius: BorderRadius.circular(10),
                /*border: Border.all(
                  color: Colors.black12,
                  width: 1,
                ),*/
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    blurRadius: 10,
                    offset: const Offset(0, 10),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: const Color(0xffE8DAEF),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: SizedBox(
                      height: 23,
                      width: 23,
                      child: SvgPicture.asset(
                        "assets/icons/sort.svg",
                        //icon,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 15),
                    child: Text(
                      'Sohbet',
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
                          /*Text(
                            //'17  Data',
                            "Detaylı Gör",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                              color: Colors.grey.shade800,
                            ),
                          ),*/
                          Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: Icon(
                                Icons.keyboard_arrow_right_sharp,
                                size: 23,
                              )
                              /*SizedBox(
                              height: 20,
                              width: 20,
                              child: SvgPicture.asset(
                                "assets/icons/right-arrow.svg",
                              ),
                            ),
                          */
                              )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Profile(),
              ),
            ),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                color:  Colors.white,
                //color: color,
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: const Color(0xffD5F5E3),
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
                      'Notlarım',
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
                          /*Text(
                            //'17  Data',
                            "Detaylı Gör",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                              color: Colors.grey.shade800,
                            ),
                          ),*/
                          Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: Icon(
                                Icons.keyboard_arrow_right_sharp,
                                size: 23,
                              )
                              /*SizedBox(
                              height: 20,
                              width: 20,
                              child: SvgPicture.asset(
                                "assets/icons/right-arrow.svg",
                              ),
                            ),
                          */
                              )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Profile(),
              ),
            ),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                //color: color,
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: const Color(0xffD6EAF8),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: SizedBox(
                      height: 23,
                      width: 23,
                      child: SvgPicture.asset(
                        "assets/icons/sort.svg",
                        //icon,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 15),
                    child: Text(
                      'Gündem',
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
                          /*Text(
                            //'17  Data',
                            "Detaylı Gör",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                              color: Colors.grey.shade800,
                            ),
                          ),*/
                          Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: Icon(
                                Icons.keyboard_arrow_right_sharp,
                                size: 23,
                              )
                              /*SizedBox(
                              height: 20,
                              width: 20,
                              child: SvgPicture.asset(
                                "assets/icons/right-arrow.svg",
                              ),
                            ),
                          */
                              )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Profile(),
              ),
            ),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                //color: color,
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: const Color(0xffFCF3CF),
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
                      'Kararlar',
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
                          /*Text(
                            //'17  Data',
                            "Detaylı Gör",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                              color: Colors.grey.shade800,
                            ),
                          ),*/
                          Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: Icon(
                                Icons.keyboard_arrow_right_sharp,
                                size: 23,
                              )
                              /*SizedBox(
                              height: 20,
                              width: 20,
                              child: SvgPicture.asset(
                                "assets/icons/right-arrow.svg",
                              ),
                            ),
                          */
                              )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Profile(),
              ),
            ),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                //color: color,
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: const Color(0xffF2D7D5),
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
                      '0 Dosya',
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
                          /*Text(
                            //'17  Data',
                            "Detaylı Gör",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                              color: Colors.grey.shade800,
                            ),
                          ),*/
                          Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: Icon(
                                Icons.keyboard_arrow_right_sharp,
                                size: 23,
                              )
                              /*SizedBox(
                              height: 20,
                              width: 20,
                              child: SvgPicture.asset(
                                "assets/icons/right-arrow.svg",
                              ),
                            ),
                          */
                              )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Profile(),
              ),
            ),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                //color: color,
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: const Color(0xffffffac),
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
                      '0 Anket',
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
                          /*Text(
                            //'17  Data',
                            "Detaylı Gör",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                              color: Colors.grey.shade800,
                            ),
                          ),*/
                          Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: Icon(
                                Icons.keyboard_arrow_right_sharp,
                                size: 23,
                              )
                              /*SizedBox(
                              height: 20,
                              width: 20,
                              child: SvgPicture.asset(
                                "assets/icons/right-arrow.svg",
                              ),
                            ),
                          */
                              )
                        ],
                      ),
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
}
