import 'package:flutter/material.dart';
import 'package:flutter_peacedev/providers/add_like_provider.dart';
import 'package:flutter_peacedev/providers/search_provider.dart';
import 'package:flutter_peacedev/services/product_services.dart';
import 'package:flutter_peacedev/shared_preferences/my_preferences.dart';
import 'package:provider/provider.dart';
import 'dart:math' as Math;

class ListProducts extends StatefulWidget {
  const ListProducts({super.key});

  @override
  State<ListProducts> createState() => _ListProductsState();
}

class _ListProductsState extends State<ListProducts> {
  @override
  Widget build(BuildContext context) {

    //Provider.of<ProductServices>(context).getList();
    final productServices = Provider.of<ProductServices>(context).data;
    productServices.retainWhere((element) => element.title!.startsWith(Provider.of<SearchProvider>(context).search));
    
    

    return Container(
          margin: EdgeInsets.symmetric(horizontal: 25),
          height: 150, 
          //color: Colors.red, 
          child: ListView.separated(
            separatorBuilder: (_, __) => SizedBox(width: 15,),
            scrollDirection: Axis.horizontal,
            itemCount: productServices.length,
            itemBuilder: (context, index) {
              
              
              //print(productServices[index].image);
              Provider.of<AddLikeProvider>(context).flag;
              return Stack(
                children: [Card(
                  elevation: 20,
                  shape: RoundedRectangleBorder(
                      side: BorderSide.none,
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25) ,bottomRight: Radius.circular(25),topLeft: Radius.circular(15) ,topRight: Radius.circular(15) )),
                  child: Column(
                    children: [
                      Container(width: 120,height: 120,decoration: BoxDecoration(border: Border(top: BorderSide.none),borderRadius: BorderRadius.only(topLeft: Radius.circular(15) ,topRight: Radius.circular(15))),
                        child: FadeInImage(
                         placeholder: AssetImage('assets/img/giphy.gif') ,
                         image: NetworkImage(productServices[index].image!),
                        ),),
                      Container(width: 120,height: 20,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25) ,bottomRight: Radius.circular(25))),child: Center(child: Text("${productServices[index].title!.substring(0,Math.min(productServices[index].title!.length, 15))}", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),)),) 
                                ],),
                ),

                Positioned(left: 90,top: 75 ,child: IconButton(
                  onPressed: (){
                    
                  },icon: Icon(Icons.shopping_cart_outlined))),
                Positioned(left: 90,top: 100,child: IconButton(
                  onPressed: (){
                    Provider.of<AddLikeProvider>(context,listen: false).flag[index]==0?Provider.of<AddLikeProvider>(context,listen: false).flag[index]=1 :Provider.of<AddLikeProvider>(context,listen: false).flag[index]=0;
                     SPHelper.sp.mensaje=(index);
                     SPHelper.sp.savefavorites("lalista",[SPHelper.sp.likes.toSet().toString()] ); 
                    },
                  icon: Icon(Icons.favorite_border,color:Provider.of<AddLikeProvider>(context,listen: false).flag[index]==0?Colors.grey:Colors.red,)))
                ]
              );
          },));
  }
}