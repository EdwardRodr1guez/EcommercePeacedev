import 'package:flutter/material.dart';
import 'package:flutter_peacedev/pages/pages.dart';
import 'package:flutter_peacedev/providers/select_page_provider.dart';

import 'package:flutter_peacedev/widgets/widgets.dart';
import 'package:provider/provider.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
   
   final selectPageProvider = Provider.of<SelectPageProvider>(context).page;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar:               CustomAppbar(height: 140),
      body:                 selectPageProvider == 0
                              ? const SearchPage()
                                : selectPageProvider == 1
                                  ? const MyCartPage() 
                                    : selectPageProvider == 2
                                      ? const MyFavoritesPage() 
                                        : const ProductsPage(),  
                            
      bottomNavigationBar:  CustomBottomNavigation(),
      );
  }
}

