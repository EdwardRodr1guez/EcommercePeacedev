import 'package:flutter/material.dart';

class ListProducts extends StatelessWidget {
  const ListProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
          margin: EdgeInsets.symmetric(horizontal: 25),
          height: 150, 
          //color: Colors.red, 
          child: ListView.separated(
            separatorBuilder: (_, __) => SizedBox(width: 15,),
            scrollDirection: Axis.horizontal,
            itemCount: 20,
            itemBuilder: (context, index) {
              return Stack(
                children: [Card(
                  elevation: 20,
                  shape: RoundedRectangleBorder(
                      side: BorderSide.none,
                     borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25) ,bottomRight: Radius.circular(25),topLeft: Radius.circular(15) ,topRight: Radius.circular(15) )),
                  child: Column(
                    children: [
                      Container(width: 100,height: 120,decoration: BoxDecoration(border: Border(top: BorderSide.none),color: Colors.blue,borderRadius: BorderRadius.only(topLeft: Radius.circular(15) ,topRight: Radius.circular(15))),child: Text("$index"),),
                      Container(width: 100,height: 20,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25) ,bottomRight: Radius.circular(25))),child: Center(child: Text("Ecommerce", style: TextStyle(fontWeight: FontWeight.bold),)),) 
                                ],),
                ),
                
                Positioned(left: 80,top: 100,child: Icon(Icons.favorite_border))
                ]
              );
          },));
  }
}