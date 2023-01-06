import 'package:flutter/material.dart';
import 'package:flutter_peacedev/providers/select_page_provider.dart';
import 'package:provider/provider.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
              data: Theme.of(context).copyWith(
              primaryColor: Color.fromRGBO(36, 206, 158, 1),),

          child: BottomNavigationBar(
             type: BottomNavigationBarType.fixed,
             onTap: (value) {
               Provider.of<SelectPageProvider>(context,listen: false).page=value;
             },
             currentIndex: 0,
             backgroundColor: Color.fromRGBO(36, 206, 158, 1),
             items: const[
                 BottomNavigationBarItem(icon: Icon(Icons.home_rounded,color: Colors.white)             ,label:"",),
                 BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined,color: Colors.white,)  ,label:"" ),
                 BottomNavigationBarItem(icon: Icon(Icons.favorite_border_outlined,color: Colors.white,),label:""),
                 BottomNavigationBarItem(icon: Icon(Icons.menu,color: Colors.white,)                    ,label:""),
    ]),
   );
  }
}
