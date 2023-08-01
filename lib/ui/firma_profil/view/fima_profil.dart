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
      //backgroundColor: Colors.white,
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
              margin: const EdgeInsets.all(10),
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
              margin: const EdgeInsets.all(10),
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
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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

            SvgPicture.asset(
              "assets/icons/more-horizontal.svg",
              height: 20,
            ),

            //-----------------------------Hakkında
            Container(
              margin: const EdgeInsets.all(10),
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
              margin: const EdgeInsets.all(10),
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
              margin: const EdgeInsets.all(10),
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
              margin: const EdgeInsets.all(10),
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

            //-----------------------------Toplantı Onay Buttonu

            /* InkWell(
              child: Container(
                width: double.infinity,
                padding:const EdgeInsets.all(15),
                margin:const EdgeInsets.symmetric(horizontal: 20),
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
                    'Toplantıyı Oluştur',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
            ),
            */ //-----------------------------En Alt Boşluk
            const SizedBox(
              height: 75,
            ),

            //************************************** */
            /*
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: TextField(
                controller: _soyad,
                decoration: InputDecoration(
                  hintText: 'Add Detail..',
                  icon: SvgPicture.asset(
                    "assets/icons/filter1.svg",
                    height: 30,
                    width: 30,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blueGrey.shade200,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue.withOpacity(0.8),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: TextField(
                controller: _soyad,
                decoration: InputDecoration(
                  hintText: 'Kişi Ekle.',
                  icon: SvgPicture.asset(
                    "assets/icons/filter1.svg",
                    height: 30,
                    width: 30,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blueGrey.shade200,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue.withOpacity(0.8),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: TextField(
                controller: _soyad,
                decoration: InputDecoration(
                  hintText: 'Video Konferans Ekle..',
                  icon: SvgPicture.asset(
                    "assets/icons/filter1.svg",
                    height: 30,
                    width: 30,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blueGrey.shade200,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue.withOpacity(0.8),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: TextField(
                controller: _soyad,
                decoration: InputDecoration(
                  hintText: 'Konum Ekle..',
                  icon: SvgPicture.asset(
                    "assets/icons/filter1.svg",
                    height: 30,
                    width: 30,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blueGrey.shade200,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue.withOpacity(0.8),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: TextField(
                controller: _soyad,
                decoration: InputDecoration(
                  hintText: 'Bildirim Ekle..',
                  icon: SvgPicture.asset(
                    "assets/icons/filter1.svg",
                    height: 30,
                    width: 30,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blueGrey.shade200,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue.withOpacity(0.8),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: TextField(
                controller: _soyad,
                decoration: InputDecoration(
                  hintText: 'Açıklama Ekle..',
                  icon: SvgPicture.asset(
                    "assets/icons/filter1.svg",
                    height: 30,
                    width: 30,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blueGrey.shade200,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue.withOpacity(0.8),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: TextField(
                controller: _soyad,
                decoration: InputDecoration(
                  hintText: 'Dosya Ekle..',
                  icon: SvgPicture.asset(
                    "assets/icons/filter1.svg",
                    height: 30,
                    width: 30,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blueGrey.shade200,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue.withOpacity(0.8),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: TextField(
                controller: _soyad,
                decoration: InputDecoration(
                  hintText: 'Soyadınız..',
                  icon: SvgPicture.asset(
                    "assets/icons/filter1.svg",
                    height: 30,
                    width: 30,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blueGrey.shade200,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue.withOpacity(0.8),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: TextField(
                controller: _soyad,
                decoration: InputDecoration(
                  hintText: 'Soyadınız..',
                  icon: SvgPicture.asset(
                    "assets/icons/filter1.svg",
                    height: 30,
                    width: 30,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blueGrey.shade200,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue.withOpacity(0.8),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              color: Color(0xfff7f7f7),
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              child: Column(children: [
                Container(
                  color: Color(0xfff7f7f7),
                  padding: EdgeInsets.all(0),
                  margin: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
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
                /*
                Divider(
                  height: 0.5,
                  indent: 75,
                  endIndent: 60,
                  color: Colors.black,
                ),
                */
                Container(
                  color: Color(0xfff7f7f7),
                  padding: EdgeInsets.all(0),
                  margin: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
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
                /*
                Divider(
                  height: 0.5,
                  indent: 75,
                  endIndent: 60,
                  color: Colors.black,
                ),
                */
              ]),
            ),
            Container(
              color: Color(0xfff7f7f7),
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              child: Column(children: [
                Container(
                  color: Color(0xfff7f7f7),
                  padding: EdgeInsets.all(0),
                  margin: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
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
                /*
                Divider(
                  height: 0.5,
                  indent: 75,
                  endIndent: 60,
                  color: Colors.black,
                ),
                */
                Container(
                  color: Color(0xfff7f7f7),
                  padding: EdgeInsets.all(0),
                  margin: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
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
                Divider(
                  height: 0.5,
                  indent: 75,
                  endIndent: 60,
                  color: Colors.black,
                ),
              ]),
            ),
            Text(
              'Favorite Page',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          */
          ],
        ),
      ),
    );
  }
}
