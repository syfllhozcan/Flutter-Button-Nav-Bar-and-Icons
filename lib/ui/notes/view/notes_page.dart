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
          //list Spnsorlar veya katılımcılar
          Expanded(
            child: Container(
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
          ),
          //Kutular
          Wrap(
            children: [
              const BoxData(
                color: Color(0xff96d1ee),
                icon: "assets/icons/sort.svg",
                text: "Sohbet",
                rota: NotesPage(),
              ),
              const BoxData(
                color: Color(0xffd196ee),
                icon: "assets/icons/sort.svg",
                text: "Notlarım",
                rota: NotesPage(),
              ),
              const BoxData(
                color: Color(0xffd1ee96),
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
              const BoxData(
                color: Color(0xfff27bba),
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
            ],
          )
        ],
      ),
    );
  }
}
