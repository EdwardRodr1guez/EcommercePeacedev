import 'package:flutter/material.dart';
import 'package:flutter_peacedev/services/product_services.dart';
import 'package:flutter_peacedev/shared_preferences/my_preferences.dart';
import 'package:provider/provider.dart';
class MyFavoritesPage extends StatelessWidget {
  const MyFavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final productServices        = Provider.of<ProductServices>(context).data;
    final List<String>? lista=SPHelper.sp.getfavoritos("lalista");
    final arreglo =lista![0].substring(1,lista[0].length-1).split(",").map(int.parse).toList(); 

    return   Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Center(
        child: Container(
           height: 200,
           child: ListView.separated(
            separatorBuilder: (context, index) => SizedBox(width: 50,),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
             return Container(margin: EdgeInsets.only(top: 150),height: 75,width: 80, decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10))),child: FadeInImage(fit: BoxFit.cover,placeholder: AssetImage('assets/img/giphy.gif') ,image: NetworkImage(productServices[arreglo[index]].image!)),);
            },itemCount: arreglo.length,)) 
           
        ),
      ]
      );
    
  
  }
}