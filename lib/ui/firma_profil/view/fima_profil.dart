import 'package:flutter/material.dart';

class FirmaProfil extends StatelessWidget {
  const FirmaProfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff1f1f1),
      appBar: AppBar(
        backgroundColor: const Color(0xfff1f1f1),
        elevation: 0,
      ),
      body: Center(
        child: Text("Firma Profil"),
      ),
    );
  }
}
