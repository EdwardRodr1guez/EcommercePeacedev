import 'package:flutter/material.dart';

class CategoriesTrendings extends StatelessWidget {
  const CategoriesTrendings({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
           children: [
            
            Container(alignment: Alignment.centerLeft,margin: EdgeInsets.only(top: 10,bottom: 6,left: 35) ,child: Text("Categories", style: TextStyle(fontWeight: FontWeight.w600, color: Color.fromRGBO(0, 0, 0, 0.66), fontSize: 15),)),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(height: 75,width: 100, decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.all(Radius.circular(10))),),
                Container(height: 75,width: 100, decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.all(Radius.circular(10))),),
                Container(height: 75,width: 100, decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.all(Radius.circular(10))),),
              ],),

            SizedBox(height: 10,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(height: 75,width: 100, decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.all(Radius.circular(10))),),
                Container(height: 75,width: 100, decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.all(Radius.circular(10))),),
                Container(height: 75,width: 100, decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.all(Radius.circular(10))),),
             
              ],),

            
            Container(alignment: Alignment.centerLeft,margin: EdgeInsets.only(top: 10,bottom: 6,left: 35) ,child: Text("Trending Today", style: TextStyle(fontWeight: FontWeight.w600, color: Color.fromRGBO(0, 0, 0, 0.66), fontSize: 15),)),
            
            Card(
                margin: EdgeInsets.symmetric(horizontal: 25),
                elevation: 20,
                shape: RoundedRectangleBorder(
                    side: BorderSide.none,
                   borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25) ,bottomRight: Radius.circular(25),topLeft: Radius.circular(15) ,topRight: Radius.circular(15) )),
                child: Container( height: 70, decoration: BoxDecoration( color: Colors.grey,borderRadius: BorderRadius.all(Radius.circular(25))), )
              )
           ], 
           
          );
  }
}