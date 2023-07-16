// ignore_for_file: must_be_immutable

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
