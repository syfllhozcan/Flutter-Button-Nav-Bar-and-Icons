import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Favorite extends StatelessWidget {
  Favorite({super.key});
  TextEditingController _soyad = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('Create Meeting',style: TextStyle(color: Colors.black87,fontSize: 18,),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
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
              margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
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
              margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
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
              margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
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
              margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
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
              margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
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
              margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
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
              margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
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
              margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
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
                Divider(
                  height: 0.5,
                  indent: 75,
                  endIndent: 60,
                  color: Colors.black,
                ),
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
                Divider(
                  height: 0.5,
                  indent: 75,
                  endIndent: 60,
                  color: Colors.black,
                ),
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
          ],
        ),
      ),
    );
  }
}
