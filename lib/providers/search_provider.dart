import 'package:flutter/cupertino.dart';

class SearchProvider extends ChangeNotifier {

  String _search   ="";
  String _category ="";

  get search  =>_search;
  get category=>_category;

  set search(value){
    _search=value;
    notifyListeners();
  }
  set category(value){
    _category=value;
    notifyListeners();
  }

}