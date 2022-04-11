import 'package:flutter/material.dart';
import '../Utils/shared_preferences_util.dart';

class CounterProvider extends ChangeNotifier{

  int counter = SharedInfo().readCounter();

  addCounter(){
    counter++;
    SharedInfo().writeCounter(counter: counter);
    notifyListeners();
  }

  resetCounter(){
    counter = 0;
    SharedInfo().writeCounter(counter: counter);
    notifyListeners();
  }
}