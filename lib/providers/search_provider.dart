import 'package:flutter/cupertino.dart';

class SearchProvider extends ChangeNotifier {

  String _search ="";
  get search=>_search;

  set search(value){
    _search=value;
    notifyListeners();
  }

}