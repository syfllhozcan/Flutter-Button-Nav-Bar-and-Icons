import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ActivityHome extends StatelessWidget {
  ActivityHome({super.key});

  @override
  Widget build(BuildContext context) {
    //ComplaintViewModel  _complaintViewModel = Provider.of<ComplaintViewModel>(context);
    return SafeArea(
      child: Container(
        color: const Color(0xfff1f1f1),
        child: Column(
                children: [
                  _buildSignOutButton(context), //Çıkış Butonu
                  _buildPfogilFoto(), //Profil Fotosu
                  _buildCityNameLength(), //Şehir, Ad, Şikayet sayısı
                  
                ],
              ),
      ),
    );
  }

  InkWell _buildSignOutButton(BuildContext context) {
    return InkWell(
                onTap: (){
                  
                },
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
                          )
                                  
                            ),
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
                          onTap: () {
                            
                          },
                          child:  CircleAvatar(
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

  Container _buildCityNameLength() {
    return Container(
                height: 70,
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                margin: const EdgeInsets.all(15),
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
                          SizedBox(
                            height: 20,
                            width: 20,
                            child: SvgPicture.asset(
                              "assets/icons/marker.svg",
                            ),
                          ),
                          Text(
                            'Elazığ',
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
                          SizedBox(
                            height: 22,
                            width: 22,
                            child: SvgPicture.asset(
                              "assets/icons/profile.svg",
                            ),
                          ),
                          Text(
                            "Seyfullah",
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
                    ]),
              );
  }
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


