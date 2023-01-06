import 'package:flutter/material.dart';
import 'package:flutter_peacedev/widgets/widgets.dart';


class CustomBody extends StatelessWidget {
  const CustomBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 180,),
        ListProducts(),

        Container(
          color: Color.fromRGBO(36, 206, 158, 1), 
          height: 60,
          margin: EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text("Get Upto 70%", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                SizedBox(height: 5,),
              Text("off on this black friday.", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                ],),
              TextButton(onPressed: (){}, child: Text("Shop Now", style: TextStyle(color: Colors.black),),style:ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
      
      borderRadius: BorderRadius.circular(12.0),
      side: BorderSide(color: Colors.white )
    )
  )
) )
            ],
            
          ),),


          Column(
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
           
          )


      ],
    );
  }
}