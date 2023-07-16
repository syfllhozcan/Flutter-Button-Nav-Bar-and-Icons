import 'package:flutter/material.dart';

class DeviceSize {
  //şimdilik burda kalsın
  double h = 844;
  double w = 402;


  double screenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  double screenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }



  double rateWidth(BuildContext context) {
    return MediaQuery.of(context).size.width / 402;
  }

  double rateHeight(BuildContext context) {
    return MediaQuery.of(context).size.height / 844;
  }

  
}
