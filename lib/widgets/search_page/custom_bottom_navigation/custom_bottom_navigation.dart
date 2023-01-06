import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
    data: Theme.of(context).copyWith(
    primaryColor: Color.fromRGBO(36, 206, 158, 1),
    ),
    child: BottomNavigationBar(
    type: BottomNavigationBarType.fixed,
    currentIndex: 0,
    backgroundColor: Color.fromRGBO(36, 206, 158, 1),
    items: [
      BottomNavigationBarItem(icon: Icon(Icons.home_rounded,color: Colors.white)            ,label:"",),
      BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined,color: Colors.white,)  ,label:"" ),
      BottomNavigationBarItem(icon: Icon(Icons.favorite_border_outlined,color: Colors.white,),label:""),
      BottomNavigationBarItem(icon: Icon(Icons.menu,color: Colors.white,)                    ,label:""),
    ]),
   );
  }
}
