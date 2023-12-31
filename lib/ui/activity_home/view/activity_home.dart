import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ActivityHomePage extends StatelessWidget {
  const ActivityHomePage({super.key});

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
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 15),
            margin: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
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
            child: Column(children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            "Doğu Anadolu İnovasyon Haftası",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            "20 - 24 Nisan 2023 09:00-19:00",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            "ELAZIĞ AKM",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage(
                          "assets/images/logo.jpg",
                        ),
                        radius: 35,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 50,
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) => CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage(
                      "assets/images/logo.jpg",
                    ),
                    radius: 32,
                  ),
                ),
              ),
            ]),
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: [
                Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    margin: const EdgeInsets.all(20),
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
                        InkWell(
                          child: Container(
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
                              const SizedBox(width: 10),
                              Text(
                                'Kontrol Paneli',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black87,
                                ),
                              )
                            ]),
                          ),
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
                                color: const Color(0xffD6EAF8),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: SvgPicture.asset(
                                "assets/icons/person1.svg",
                                height: 20,
                                width: 20,
                              ),
                            ),
                            const SizedBox(
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
                const SizedBox(
                  height: 50,
                ),
                Container(
                    padding: const EdgeInsets.all(15),
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      //color: const Color(0xfff6f8f7),
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Text(
                            "Eklenti Hakkında",
                            style: const TextStyle(
                              fontSize: 18,
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),

                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          //alignment: Alignment.centerLeft,
                          child: Text(
                            "Yinelenen bir sayfa içeriğinin okuyucunun dikkatini dağıttığı bilinen bir gerçektir. Lorem Ipsum kullanmanın amacı, sürekli 'buraya metin gelecek, buraya metin gelecek' yazmaya kıyasla daha dengeli bir harf dağılımı sağlayarak okunurluğu artırmasıdır.\n Şu anda birçok masaüstü yayıncılık paketi ve web sayfa düzenleyicisi, varsayılan mıgır metinler olarak Lorem Ipsum kullanmaktadır. \nAyrıca arama motorlarında 'lorem ipsum' anahtar sözcükleri ile arama yapıldığında henüz tasarım aşamasında olan çok sayıda site listelenir. Yıllar içinde, bazen kazara, bazen bilinçli olarak (örneğin mizah katılarak), çeşitli sürümleri geliştirilmiştir.",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              wordSpacing: 3,
                              height: 1.5,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        /*
                        const Divider(
                          height: 1,
                          indent: 100,
                          endIndent: 100,
                          color: Colors.black,
                        ),
*/
                        const SizedBox(
                          height: 20,
                        ),
                        //BuildGoogleMap(),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          // alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Text(
                            "Sivas Ticater ve Sanayi Odası",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          child: Text(
                            "Kaleardı, Zihni Tastan Sokak No:2, 58080 Sivas Merkez/Sivas",
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                        /*
                        Align(
                          alignment: Alignment.centerRight,
                          child: ElevatedButton(
                            onPressed: null,
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                const Color(0xFF5A60FF),
                              ),
                            ),
                            child: const Text(
                              'Google Map',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ),
                        */
                        Align(
                          alignment: Alignment.centerRight,
                          child: OutlinedButton(
                            onPressed: null,
                            style: OutlinedButton.styleFrom(
                              side: const BorderSide(
                                color: Color(0xFF5A60FF),
                              ), // Border rengi
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    10.0), // Kenar yuvarlaklığı
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.asset(
                                  "assets/images/Google_Maps.jpg",
                                  height: 18,
                                  width: 18,
                                ),
                                Text(
                                  'Google Maps',
                                  style: TextStyle(
                                    color: Colors.black87,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        /*
                        const Divider(
                          height: 1,
                          indent: 100,
                          endIndent: 100,
                          color: Colors.black,
                        ),
                        */
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: const Text(
                            "Etkinliği Paylaş",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: const Color(0xfff1f1f1),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              InkWell(
                                onTap: null,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 5,
                                    horizontal: 5,
                                  ),
                                  //color: Colors.white,
                                  child: Image.network(
                                    'https://upload.wikimedia.org/wikipedia/commons/thumb/5/56/Chain_link_icon_slanted.png/800px-Chain_link_icon_slanted.png',
                                    height: 27,
                                    width: 27,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: null,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 5,
                                    horizontal: 5,
                                  ),
                                  //color: Colors.white,
                                  child: Image.network(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTn_-Oe_Kwr62vEHmZ_O_OdrqvE8HJ11q7XTw&usqp=CAU',
                                    height: 27,
                                    width: 27,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: null,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 5,
                                    horizontal: 5,
                                  ),
                                  //color: Colors.white,
                                  child: Image.network(
                                    'https://upload.wikimedia.org/wikipedia/en/thumb/0/04/Facebook_f_logo_%282021%29.svg/800px-Facebook_f_logo_%282021%29.svg.png',
                                    height: 27,
                                    width: 27,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: null,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 5,
                                    horizontal: 5,
                                  ),
                                  //color: Colors.white,
                                  child: Image.network(
                                    'https://upload.wikimedia.org/wikipedia/commons/thumb/c/ca/LinkedIn_logo_initials.png/800px-LinkedIn_logo_initials.png',
                                    height: 27,
                                    width: 27,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: null,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 5,
                                    horizontal: 5,
                                  ),
                                  //color: Colors.white,
                                  child: Image.network(
                                    'https://upload.wikimedia.org/wikipedia/commons/thumb/9/95/Instagram_logo_2022.svg/150px-Instagram_logo_2022.svg.png',
                                    height: 27,
                                    width: 27,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    )),
                const SizedBox(
                  height: 40,
                ),
                /*
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
                Container(
                  color: Color(0xfff7f7f7),
                  padding: EdgeInsets.all(0),
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
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
                        "assets/icons/filter1.svg",
                        height: 20,
                        width: 20,
                      ),
                    ),
                    SizedBox(
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
                  color: Color(0xfff7f7f7),
                  padding: EdgeInsets.all(0),
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
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
                  color: Color(0xfff7f7f7),
                  padding: EdgeInsets.all(0),
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                  child: Row(children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.all(10),
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
                  color: Color(0xfff7f7f7),
                  padding: EdgeInsets.all(0),
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                  child: Row(children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.all(10),
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
                  color: Color(0xfff7f7f7),
                  padding: EdgeInsets.all(0),
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                  child: Row(children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        //color: Colors.white,
                        color: Color(0xffF2D7D5),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: SvgPicture.asset(
                        "assets/icons/bookmark.svg",
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
                  color: Color(0xfff7f7f7),
                  padding: EdgeInsets.all(0),
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                  child: Row(children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        //color: Colors.white,
                        color: Color(0xffD6EAF8),
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
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
                Container(
                    padding: EdgeInsets.all(0),
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                      color: Color(0xfff7f7f7),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ListView(shrinkWrap: true, children: [
                      Container(
                        color: Color(0xfff7f7f7),
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
                              "assets/icons/profile.svg",
                              height: 20,
                              width: 20,
                            ),
                          ),
                          SizedBox(
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
                        color: Color(0xfff7f7f7),
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
                          SizedBox(
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
                const SizedBox(
                  height: 40,
                ),
                // Image.asset("assets/images/logo2.jpg", fit: BoxFit.cover),
                */
                const SizedBox(
                  height: 70,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
