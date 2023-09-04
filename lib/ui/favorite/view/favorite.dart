import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker_plus/flutter_datetime_picker_plus.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

class Favorite extends StatefulWidget {
  Favorite({super.key});

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {

  String selectedToplanti = 'Toplantı'; // Başlangıçta seçili değer Toplantı
  String selectedYuzyuze = 'Yüzyüze'; // Başlangıçta seçili değer Yüzyüze
  List<String> dropdownToplanti = [
    'Toplantı',
    'Seminer',
    'Panel',
    'Konferans',
    'Diğer',
  ];

  List<String> dropdownYuzyuze = [
    'Yüzyüze',
    'Online',
    'Hibrit',
    'Telefon',
    'Yazışma',
    'Diğer',
  ];

  DateTime selectedDate = DateTime(2023, 7, 19, 21, 0);
  DateTime selectedStartTime = DateTime(2023, 7, 19, 21, 0);
  DateTime selectedEndTime = DateTime(2023, 7, 19, 22, 0);

  void _selectDate() {
    DatePicker.showDatePicker(
      context,
      showTitleActions: true,
      minTime: DateTime(2021, 1, 1),
      maxTime: DateTime(2025, 12, 31),
      onChanged: (date) {
        setState(() {
          selectedDate = date;
        });
      },
      currentTime: selectedDate,
      locale: LocaleType.tr,
    );
  }

  void _selectStartTime() {
    DatePicker.showTimePicker(
      context,
      showTitleActions: true,
      onChanged: (time) {
        setState(() {
          selectedStartTime = DateTime(
            selectedDate.year,
            selectedDate.month,
            selectedDate.day,
            time.hour,
            time.minute,
          );
        });
      },
      currentTime: selectedStartTime,
      locale: LocaleType.tr,
    );
  }

  void _selectEndTime() {
    DatePicker.showTimePicker(
      context,
      showTitleActions: true,
      onChanged: (time) {
        setState(() {
          selectedEndTime = DateTime(
            selectedDate.year,
            selectedDate.month,
            selectedDate.day,
            time.hour,
            time.minute,
          );
        });
      },
      currentTime: selectedEndTime,
      locale: LocaleType.tr,
    );
  }

  @override
  Widget build(BuildContext context) {
    final dateFormatter = DateFormat('d MMMM yyyy');
    final timeFormatter = DateFormat('HH:mm');
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
            size: 18,
          ),
        ),
        backgroundColor: const Color(0xfff1f1f1),
        elevation: 0,
        title: Image.asset(
          "assets/images/logo_beetinq.png",
          height: 28,
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
            //-----------------------------Toplantı Oluştur Text
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Toplantı Oluştur',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            //-----------------------------Toplantı Oluştur Search
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
                          "assets/icons/search.svg",
                          height: 15,
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
                              hintText: "Toplantı Adı..",
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
            //-----------------------------Tarih, Başlangıç, Bitiş
            Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(10),
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
                  InkWell(
                    onTap: _selectDate,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(15),
                          child: Text(
                            'Tarih                   -',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Text(
                            //'19 Temm 2023',
                            '${dateFormatter.format(selectedDate)}',
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    height: 1,
                    indent: 120,
                    endIndent: 0,
                    color: Color(0xFF5A60FF),
                  ),
                  InkWell(
                    onTap: _selectStartTime,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(15),
                          child: Text(
                            'Başlangıç          -',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Text(
                            //'21:00',
                            '${timeFormatter.format(selectedStartTime)}',
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    height: 1,
                    indent: 120,
                    endIndent: 0,
                    color: Color(0xFF5A60FF),
                  ),
                  InkWell(
                    onTap: _selectEndTime,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(15),
                          child: Text(
                            'Bitiş                    -',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Text(
                            //'22:00',
                            '${timeFormatter.format(selectedEndTime)}',
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //-----------------------------Kişi Ekle ve Davetli
            InkWell(
              onTap: () {},
              child: Container(
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
            ),
            //-----------------------------Bireysel Toplantı Box
            InkWell(
              onTap: () {},
              child: Container(
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
            ),
            //-----------------------------Toplantı Box
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
                value: selectedToplanti,
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
                    selectedToplanti = newValue!;
                  });
                },
                items: dropdownToplanti
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
            //-----------------------------Yüzyüze Box
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
                value: selectedYuzyuze,
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
                    selectedYuzyuze = newValue!;
                  });
                },
                items: dropdownYuzyuze
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
            //-----------------------------Konum Ekle Serarch
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
                          "assets/icons/marker.svg",
                          height: 15,
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
                              hintText: "Konum Ekle..",
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
            //-----------------------------Boşluk
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
            InkWell(
              onTap: () {},
              child: Container(
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(10),
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
                child: const Center(
                    child: Text(
                  "+",
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.black54,
                  ),
                )),
              ),
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
          ],
        ),
      ),
    );
  }
}
