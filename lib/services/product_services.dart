import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_peacedev/models/products_model.dart';
import 'package:http/http.dart' as http;

class ProductServices with ChangeNotifier{

List<ProductService> data =[];

ProductServices(){
  this.getList();
}

getList()async{
final url  =  "https://fakestoreapi.com/products?limit=19";
final resp = await http.get(Uri.parse(url)); 

List<ProductService> newResponse = productServiceFromMap(resp.body);
this.data=newResponse;



//this.headlines.addAll(newResponse.articles);
//print(Users.fromJson(json.decode(resp.body)));

//print(newResponse);
 //final users = Users.fromMap(newResponse);

//print(newResponse);

//final newResponse = Users.fromJson(resp.body);
//print(newResponse.runtimeType);
//print(Users.fromMap(json.decode(resp.body)));
    
    //print(json.encode(resp.body));
    //List lista=[];
    //print(Users.fromJson(json.encode(resp.body))); 
  
    //json.decode(resp.body);

//print(resp.body. .runtimeType);
//newResponse.
//this.headlines.addAll(newResponse);
notifyListeners();
}

}