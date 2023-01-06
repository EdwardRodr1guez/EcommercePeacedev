import 'package:flutter/cupertino.dart';

class SelectPageProvider extends ChangeNotifier {

  int _page=0;
  int get page=>_page;
  set page(int value){
    _page=value;
    notifyListeners();
  }

}