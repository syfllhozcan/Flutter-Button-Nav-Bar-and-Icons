import 'package:flutter/material.dart';

class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
        child:  Text(
          'Favorite Page',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ));
  }
}