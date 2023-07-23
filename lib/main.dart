import 'package:button_nav_bar/ui/root.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.dark,
      
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //initialRoute: AuthService().currentUser() != null ? FirstAddData() : Login(),
      /*
           routes: {
          '/':(context) => RootApp(),
          '/firstAddComplaint':(context) => FirstAddData(),
          '/login':(context) => Login(),
          '/detail':(context) => Detail(),

        },
        */
      home: RootApp(),
    );
  }
}
