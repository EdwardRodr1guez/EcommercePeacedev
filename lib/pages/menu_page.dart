import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [Container(margin: EdgeInsets.only(top: 250),child: Text("My menu Page"))],
      ),
    );
  }
}