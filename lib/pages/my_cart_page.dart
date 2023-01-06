import 'package:flutter/material.dart';

class MyCartPage extends StatelessWidget {
  const MyCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [Container(margin: EdgeInsets.only(top: 250),child: Text("My cart Page"))],
      ),
    );
  }
}