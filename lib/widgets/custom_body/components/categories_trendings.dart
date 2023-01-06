import 'package:flutter/material.dart';
import 'package:flutter_peacedev/providers/search_provider.dart';
import 'package:flutter_peacedev/services/product_services.dart';
import 'package:provider/provider.dart';

class CategoriesTrendings extends StatelessWidget {
  const CategoriesTrendings({super.key});

  @override
  Widget build(BuildContext context) {

    Provider.of<ProductServices>(context).getList();
    final productServices        = Provider.of<ProductServices>(context).data;
    final categoryElectronics    = productServices.firstWhere(((element) => element.category=="electronics"));
    final categoryJewel          = productServices.firstWhere(((element) => element.category=="jewelery"));
    final categoryMen            = productServices.firstWhere(((element) => element.category=="men's clothing"));
    final categoryWomen          = productServices.firstWhere(((element) => element.category=="women's clothing"));
    productServices.retainWhere((element) => element.title!.startsWith(Provider.of<SearchProvider>(context).search));
    


   

    return Column(
           children: [
            
            Container(alignment: Alignment.centerLeft,margin: EdgeInsets.only(top: 10,bottom: 6,left: 35) ,child: Text("Categories", style: TextStyle(fontWeight: FontWeight.w600, color: Color.fromRGBO(0, 0, 0, 0.66), fontSize: 15),)),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(height: 75,width: 80, decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10))),child: FadeInImage(fit: BoxFit.cover,placeholder: AssetImage('assets/img/giphy.gif') ,image: NetworkImage(categoryMen.image!)),),
                Container(height: 75,width: 80, decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10))),child: FadeInImage(fit: BoxFit.cover,placeholder: AssetImage('assets/img/giphy.gif') ,image: NetworkImage(categoryElectronics.image!)),),
                Container(height: 75,width: 80, decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.all(Radius.circular(10))),child: Center(child: Text("New Category Soon!",textAlign: TextAlign.center,)),),
             ],),

            SizedBox(height: 10,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(height: 75,width: 80, decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10))),child: FadeInImage(fit: BoxFit.cover,placeholder: AssetImage('assets/img/giphy.gif') ,image: NetworkImage(categoryWomen.image!)),),
                Container(height: 75,width: 80, decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10))),child: FadeInImage(fit: BoxFit.cover,placeholder: AssetImage('assets/img/giphy.gif') ,image: NetworkImage(categoryJewel.image!)),),
                Container(height: 75,width: 80, decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.all(Radius.circular(10))),child: Center(child: Text("New Category Soon!",textAlign: TextAlign.center,)),),
             
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