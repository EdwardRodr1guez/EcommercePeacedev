import 'package:flutter/material.dart';


class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
   
      return Scaffold(
        extendBodyBehindAppBar: true,
        appBar:  CustomAppbar(height: 158),
        body: Column(
          children: [
            SizedBox(height: 190,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              height: 150, 
              //color: Colors.red, 
              child: ListView.separated(
                separatorBuilder: (_, __) => SizedBox(width: 15,),
                scrollDirection: Axis.horizontal,
                itemCount: 20,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 20,
                    shape: RoundedRectangleBorder(
                        side: BorderSide.none,
                       borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25) ,bottomRight: Radius.circular(25),topLeft: Radius.circular(15) ,topRight: Radius.circular(15) )),
                    child: Column(
                      children: [
                        Container(width: 100,height: 120,decoration: BoxDecoration(border: Border(top: BorderSide.none),color: Colors.blue,borderRadius: BorderRadius.only(topLeft: Radius.circular(15) ,topRight: Radius.circular(15))),child: Text("$index"),),
                        Container(width: 100,height: 20,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25) ,bottomRight: Radius.circular(25))),child: Center(child: Text("Ecommerce", style: TextStyle(fontWeight: FontWeight.bold),)),) 
                                  ],),
                  );
              },)),
          ],
        ),
      );
   
  
  }
  
}

class CustomAppbar extends StatelessWidget with PreferredSizeWidget{
      CustomAppbar({
    required this.height,
    Key? key,
  }) : super(key: key);

  double height;
  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
              preferredSize: Size(158,CustomAppbar(height: height,).preferredSize.height),
              child: Stack(
                      children: [
                        Container(
                        height: height,
                        decoration: const BoxDecoration(
                            gradient: LinearGradient(
                            begin: Alignment.centerLeft,end: Alignment(0.95, 1.0), 
                            colors:[Color.fromRGBO(36, 206, 158, 1),Color.fromRGBO(36, 206, 158, 0.3)] ),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20) ,
                              bottomRight: Radius.circular(20)) ),
                            child: Center(child: Text("data")),),

                              
                        Center(child: Container(
                          margin: EdgeInsets.only(top: 80),
                          height: 45,
                          width: 280,
                          child: Material(
                            borderRadius:  BorderRadius.all(Radius.circular(20)),
                            elevation: 10,
                            child: Center(child: TextField(
                              decoration: InputDecoration(contentPadding: EdgeInsets.symmetric(vertical: 13),prefixIcon: Icon(Icons.search,color: Color.fromRGBO(0, 0, 0, 0.53) ),hintText: "Search",border: InputBorder.none, hintStyle: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.53),fontWeight: FontWeight.w400, fontSize: 18)),
                            )),
                          ),
                        )),]
                          ),);
  }
}