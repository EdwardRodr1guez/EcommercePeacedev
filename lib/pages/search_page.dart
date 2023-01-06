import 'package:flutter/material.dart';

import 'package:flutter_peacedev/widgets/widgets.dart';


class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar:               CustomAppbar(height: 140),
      body:                 CustomBody(),
      bottomNavigationBar:  CustomBottomNavigation(),
      );
  }
}

