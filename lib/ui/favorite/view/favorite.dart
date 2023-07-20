import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Favorite extends StatelessWidget {
  Favorite({super.key});
  TextEditingController _soyad = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      backgroundColor: const Color(0xfff1f1f1),
      appBar: AppBar(
        //backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SvgPicture.asset("assets/icons/angle-left.svg"),
        ),
        //height: 10, width: 10, fit: BoxFit.cover,),
        
        backgroundColor: const Color(0xfff1f1f1),
        elevation: 0,
        title: Image.asset("assets/images/logo_beetinq.png",
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
            //-----------------------------Toplantı Oluştur Text
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Toplantı Oluştur',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            //-----------------------------Toplantı Oluştur Search
            Container(
              margin: EdgeInsets.all(10),
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
                        SizedBox(width: 10),
                        SvgPicture.asset(
                          "assets/icons/search.svg",
                          height: 15,
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: TextField(
                            textAlign: TextAlign.left,
                            expands: false,
                            onChanged: (value) {},
                            style: TextStyle(fontSize: 16),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Toplantı Adı..",
                              contentPadding: EdgeInsets.all(0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 10),
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
            //-----------------------------Tarih Başlangıç Bitiş

            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(10),
              //height: 145,
              width: double.infinity,
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
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Text(
                            'Tarih                   -',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Text(
                          '19 Temm 2023',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    height: 1,
                    indent: 120,
                    endIndent: 0,
                    color: Color(0xFF5A60FF),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Text(
                            'Başlangıç          -',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Text(
                          '21:00',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    height: 1,
                    indent: 120,
                    endIndent: 0,
                    color: Color(0xFF5A60FF),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Text(
                            'Bitiş                    -',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Text(
                          '22:00',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 0,
            ),
            //-----------------------------Kişi Ekle ve Davetli
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              padding: const EdgeInsets.symmetric(
                vertical: 15,
                horizontal: 20,
              ),
              //height: 45,
              width: double.infinity,
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
              child: Text(
                'Kişi Ekle  -  0 Davetli',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                ),
              ),
            ),
            //-----------------------------Bireysel Toplantı Box

            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              padding: const EdgeInsets.symmetric(
                vertical: 15,
                horizontal: 20,
              ),
              //height: 45,
              width: double.infinity,
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
              child: Text(
                'Bireysel Toplantı',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                ),
              ),
            ),
            //-----------------------------Toplantı Box

            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              padding: const EdgeInsets.symmetric(
                vertical: 15,
                horizontal: 20,
              ),
              //height: 45,
              width: double.infinity,
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Toplantı',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(
                    child: SvgPicture.asset(
                      "assets/icons/dropdown.svg",
                      color: Colors.black87,
                      fit: BoxFit.cover,
                      height: 10,
                      width: 10,
                    ),
                  ),
                ],
              ),
            ),
            //-----------------------------Yüzyüze Box
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              padding: const EdgeInsets.symmetric(
                vertical: 15,
                horizontal: 20,
              ),
              //height: 45,
              width: double.infinity,
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Yüzyüze',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(
                    child: SvgPicture.asset(
                      "assets/icons/dropdown.svg",
                      color: Colors.black87,
                      fit: BoxFit.cover,
                      height: 10,
                      width: 10,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            //-----------------------------Açıklama Ekle Text and Box
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              child: Column(
                children: [
                  Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 0, vertical: 20),
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      'Açıklama Ekle',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          blurRadius: 10,
                          offset: const Offset(0, 10),
                        ),
                      ],
                    ),
                    child: TextFormField(
                      minLines: 2,
                      maxLines: 10,
                      keyboardType: TextInputType.multiline,
                      decoration: InputDecoration(
                        hintText: 'Açıklama..',
                        hintStyle: TextStyle(color: Colors.grey[800]),
                        filled: true,
                        fillColor: Colors.white,
                        border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            //-----------------------------Dosya Ekle Text
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              alignment: Alignment.centerLeft,
              child: const Text(
                'Dosya Ekle',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ),
            //-----------------------------Dosya Ekle Box
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(10),
              //height: 145,
              width: double.infinity,
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
              child: Center(
                  child: Text(
                "+",
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.black54,
                ),
              )),
            ),
            const SizedBox(
              height: 70,
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
