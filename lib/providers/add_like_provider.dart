import 'package:flutter/cupertino.dart';

class AddLikeProvider extends ChangeNotifier {

  
  List _flag=List<int>.generate(19, (i) =>  0);
  get flag=>_flag;

  set flag(value){
    _flag=value;
    notifyListeners();
  }

}