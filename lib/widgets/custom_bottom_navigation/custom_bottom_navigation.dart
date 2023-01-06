import 'package:flutter/material.dart';
import 'package:flutter_peacedev/providers/select_page_provider.dart';
import 'package:flutter_peacedev/shared_preferences/my_preferences.dart';
import 'package:provider/provider.dart';

class CustomBottomNavigation extends StatelessWidget {
      CustomBottomNavigation({
    Key? key,
  }) : super(key: key);

  final List<String>? lista=SPHelper.sp.getfavoritos("lalista");

  @override
  Widget build(BuildContext context) {
    return Theme(
              data: Theme.of(context).copyWith(
              primaryColor: Color.fromRGBO(36, 206, 158, 1),),

          child: BottomNavigationBar(
             type: BottomNavigationBarType.fixed,
             onTap: (value) {
               if(lista==null)
               {
               Provider.of<SelectPageProvider>(context,listen: false).page=0;
               }else{
                Provider.of<SelectPageProvider>(context,listen: false).page=value;
               }
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
