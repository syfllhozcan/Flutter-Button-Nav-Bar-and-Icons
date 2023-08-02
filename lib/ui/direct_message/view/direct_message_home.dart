/*import 'package:beetinq/config/image/icon/icons.dart';
import 'package:beetinq/config/image/image/images.dart';
import 'package:beetinq/core/model/dm_list_model.dart';
import 'package:beetinq/core/model/user_model.dart';
import 'package:beetinq/core/service/database/direct_message/list_user_direct_message.dart';
import 'package:beetinq/core/service/database/users/get_user.dart';
import 'package:beetinq/core/service/firebase/controller/user_uid_controller.dart';
import 'package:beetinq/ui/direct_message/widget/dm_page_header_vidget.dart';
import 'package:beetinq/ui/direct_message/widget/header_widget.dart';
import 'package:beetinq/ui/direct_message/widget/user_list_message_tile.dart';
import 'package:beetinq/ui/menu_page/view/menu_page.dart';*/
//import 'package:button_nav_bar/ui/profil/view/profile.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DirectMessageHomePage extends StatefulWidget {
  const DirectMessageHomePage({Key? key}) : super(key: key);

  @override
  _DirectMessageHomePageState createState() => _DirectMessageHomePageState();
}

class _DirectMessageHomePageState extends State<DirectMessageHomePage> {
  //String userUid = GetUserInformation().getUserUid();

  TextEditingController searchcontroller = TextEditingController();

  String? name = "";
  int rowCount = 1;

  bool searchState = false;
  String serarchValue = "";
  List connect = [];
  @override
  Widget build(BuildContext context) {
    //AppLocalizations? translate = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;
    return Scaffold(
      extendBody: false,
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        backgroundColor: Colors.black,
        overlayOpacity: 0.0,
        spacing: 8,
        spaceBetweenChildren: 12,
        children: [
          SpeedDialChild(
            child: SvgPicture.asset(
              "assets/icons/camera.svg",
              height: 20,
              width: 20,
              color: Colors.white,
            ),
            label: 'Fotoğraf',
            backgroundColor:const Color(0xFF5A60FF),
            //backgroundColor: const Color(0xffe8daef),
          ),
          SpeedDialChild(
            child: SvgPicture.asset(
              "assets/icons/attach.svg",
              height: 20,
              width: 20,
              color: Colors.white,
            ),
            label: 'Dosya',
            backgroundColor:const Color(0xFF5A60FF),
            //backgroundColor: const Color(0xffd5f5e3),
          ),
          SpeedDialChild(
            child: SvgPicture.asset(
              "assets/icons/microphone.svg",
              height: 20,
              width: 20,
              color: Colors.white,
            ),
            label: 'Ses',
            backgroundColor:const Color(0xFF5A60FF),
            //backgroundColor: const Color(0xffd6eaf8),
          ),
          SpeedDialChild(
            child: SvgPicture.asset(
              "assets/icons/operation.svg",
              height: 20,
              width: 20,
              color: Colors.white,
            ),
            label: 'Metin',
            backgroundColor:const Color(0xFF5A60FF),
            //backgroundColor: const Color(0xfffcf3cf),
          ),
        ],
      ),
      backgroundColor: const Color(0xfff1f1f1),
      appBar: AppBar(
        backgroundColor: const Color(0xfff1f1f1),
        title: Image.asset(
          "assets/images/logo_beetinq.png",
          height: 30,
          fit: BoxFit.cover,
        ),
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
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
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
                          "assets/icons/search.svg",
                          height: 15,
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: TextField(
                            textAlign: TextAlign.left,
                            expands: false,
                            onChanged: (value) {
                              setState(() {
                                name = value;
                              });
                            },
                            style: const TextStyle(fontSize: 16),
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: "Notlarda Ara...",
                              contentPadding: EdgeInsets.all(0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(12),
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
                    child: InkWell(
                      onTap: () {},
                      child: SvgPicture.asset(
                        "assets/icons/filter.svg",
                        //color: theme.primaryColor,
                        height: 20,
                        width: 20,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
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
            margin: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 5,
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 10,
            ),
            child: Row(
              children: [
                SvgPicture.asset(
                  "assets/icons/ses.svg",
                  height: 23,
                  width: 23,
                ),
                const SizedBox(
                  width: 8,
                ),
                const Text(
                  "Ses Dosyası ",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),
          Container(
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
            margin: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 5,
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 10,
            ),
            child: Row(
              children: [
                SvgPicture.asset(
                  "assets/icons/camera.svg",
                  height: 23,
                  width: 23,
                ),
                const SizedBox(
                  width: 8,
                ),
                const Text(
                  "Fotoğraf",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),
          Container(
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
            margin: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 5,
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 10,
            ),
            child: Row(
              children: [
                SvgPicture.asset(
                  "assets/icons/attach.svg",
                  height: 23,
                  width: 23,
                ),
                const SizedBox(
                  width: 8,
                ),
                const Text(
                  "Dosya",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Center(
            child: Text(
              "Hiç Bir Sonuç Yok",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black87,
                fontStyle: FontStyle.italic,
              ),
            ),
          )
          /*
              Expanded(
                child: ListView.builder(
                  itemCount: snap.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return UserListMessageTile(
                      userList: snap.data[index],
                    );
                  },
                ),
              ),
            */
        ],
      ),
    );
  }
}
