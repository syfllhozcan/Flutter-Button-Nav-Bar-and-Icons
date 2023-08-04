import 'package:button_nav_bar/ui/meeting/view/meeting.dart';
import 'package:button_nav_bar/ui/notes/view/notes_page.dart';
import 'package:button_nav_bar/widgets/box_data.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class JoinMeeting extends StatelessWidget {
  const JoinMeeting({super.key});

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
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 15,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DottedBorder(
                    dashPattern: [8, 4],
                    strokeWidth: 2,
                    borderType: BorderType.RRect,
                    radius: const Radius.circular(10),
                    color: Colors.black54,
                    child: Container(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                      decoration: BoxDecoration(),
                      child: Text(
                        '10:00 - 10:40   12 April 2023',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 60,
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
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 30,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset(
                          "assets/images/logo_black.jpg",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              child: Text(
                'Busines Development',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Text(
                'Lorem Ipsum, kısaca Lipsum, masaüstü yayıncılık ve basın yayın sektöründe kullanılan taklit yazı bloğu olarak tanımlanır. Lipsum, oluşturulacak şablon ve taslaklarda içerik yerine geçerek yazı bloğunu doldurmak için kullanılır.',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                  wordSpacing: 3,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            //3 nokta işareti
            Center(
              child: SvgPicture.asset(
                "assets/icons/more-horizontal.svg",
                height: 20,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              child: Text(
                'Meeting Location',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ),
            //alt kutular Davet, Gündem
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  const BoxData(
                    color: Color(0xff96d1ee),
                    icon: "assets/icons/message.svg",
                    text: "Davet",
                    rota: NotesPage(),
                  ),
                  const BoxData(
                    color: Color(0xfff2ba7b),
                    icon: "assets/icons/agenda.svg",
                    text: "Gündem",
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
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              child: Text(
                'Seçim Yap',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 10,
              ),
              child: Row(children: [
                DottedBorder(
                  dashPattern: [8, 4],
                  strokeWidth: 2,
                  borderType: BorderType.RRect,
                  radius: const Radius.circular(12),
                  color: Colors.black54,
                  child: Container(
                    height: 50,
                    width: 100,
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    //margin: const EdgeInsets.all(10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          "assets/icons/tik.svg",
                          color: Colors.green,
                          height: 18,
                        ),
                        const Text(
                          "Kabul Et",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black87,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                DottedBorder(
                  dashPattern: [8, 4],
                  strokeWidth: 2,
                  borderType: BorderType.RRect,
                  radius: const Radius.circular(12),
                  color: Colors.black54,
                  child: Container(
                    height: 50,
                    width: 100,
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    //margin: const EdgeInsets.all(10),
      
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          "assets/icons/x.svg",
                          color: Colors.red,
                          height: 18,
                        ),
                        const Text(
                          "Red Et",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black87,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
