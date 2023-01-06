import 'package:flutter/material.dart';

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
                            child: Center(child: Container(
                              margin: const EdgeInsets.symmetric(horizontal: 25),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: const[
                                    Text("Hi Edward!", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
                                    Icon(Icons.notifications_none_outlined, color: Colors.white,),
                                  ],),
                                  const SizedBox(height: 5,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: const[
                                    Icon(Icons.location_on_outlined, color: Colors.white,),
                                    SizedBox(width: 5,),
                                    Text("COMSATS University Islamabad", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                                  ],)
                                ],
                              ),
                            )),),

                              
                        Center(child: Container(
                          margin: const EdgeInsets.only(top: 80),
                          height: 45,
                          width: 280,
                          child: const Material(
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