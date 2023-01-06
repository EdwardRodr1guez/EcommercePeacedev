import 'package:flutter/material.dart';

class OfferLists extends StatelessWidget {
  const OfferLists({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
        
      ),);
  }
}