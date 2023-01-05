import 'package:flutter/material.dart';
import 'package:flutter_peacedev/pages/pages.dart';


class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: ScrollPhysics(parent: NeverScrollableScrollPhysics()),
      children: [
        SearchPage(),
        ProductsPage(),
      ],
    );
  }
}