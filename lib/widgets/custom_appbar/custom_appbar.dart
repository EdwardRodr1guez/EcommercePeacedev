import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_peacedev/firebase/users_firebase.dart';
import 'package:flutter_peacedev/providers/search_provider.dart';
import 'package:flutter_peacedev/services/product_services.dart';
import 'package:provider/provider.dart';

class CustomAppbar extends StatefulWidget with PreferredSizeWidget{
      CustomAppbar({
    required this.height,
    Key? key,
  }) : super(key: key);

  double height;
  @override
  Size get preferredSize => Size.fromHeight(height);
  @override
  State<CustomAppbar> createState() => _CustomAppbarState();
}

class _CustomAppbarState extends State<CustomAppbar> {
  

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
              preferredSize: Size(158,CustomAppbar(height: widget.height,).preferredSize.height),
              child: Stack(
                      children: [
                        Container(
                          height: widget.height,
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
                                  StreamBuilder<DocumentSnapshot>(
                                    stream: UsersRepository().getUserNameByFirestore("IG2Y5n09Q36cCzql1jbP"),
                                    builder: (context, snapshot) {
                                      print(snapshot.data!.data());
                                      String name=snapshot.data!["name"];
                                      return Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                        Text("Hi $name!", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
                                        Icon(Icons.notifications_none_outlined, color: Colors.white,),
                                      ],);
                                    }
                                  ),
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
                          child: Material(
                            borderRadius:  BorderRadius.all(Radius.circular(20)),
                            elevation: 10,
                            child: Center(child: TextField(
                              onChanged: (value) { 
                                Provider.of<SearchProvider>(context,listen: false).search=value;
                                if(Provider.of<SearchProvider>(context,listen: false).search==""){
                                  
                                   Provider.of<ProductServices>(context,listen: false).data=Provider.of<ProductServices>(context,listen: false).getList();
                                }else{
                                  
                                   List adata=Provider.of<ProductServices>(context,listen: false).getList();
                                        adata.retainWhere((element) => element.title!.startsWith(value));
                                   print("Filtra o no ${adata.length}");
                                }
                                },
                              decoration: InputDecoration(contentPadding: EdgeInsets.symmetric(vertical: 13),prefixIcon: Icon(Icons.search,color: Color.fromRGBO(0, 0, 0, 0.53) ),hintText: "Search",border: InputBorder.none, hintStyle: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.53),fontWeight: FontWeight.w400, fontSize: 18)),
                            )),
                          ),
                        )),]
                          ),);
  }
}