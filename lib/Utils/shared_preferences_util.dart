import 'package:shared_preferences/shared_preferences.dart';

import 'constants.dart';

class SharedInfo{

  static SharedPreferences? _prefsInstance;
  static Future<SharedPreferences> get _instance async => _prefsInstance ??= await SharedPreferences.getInstance();

  // call this method from iniState() function of mainApp().
  static Future<SharedPreferences> init() async {
    _prefsInstance = await _instance;
    return _prefsInstance!;
  }

  writeCounter({required int counter}){
    _prefsInstance!.setInt(SHARED_KEY_COUNTER, counter);
  }

  int readCounter(){
    return _prefsInstance!.getInt(SHARED_KEY_COUNTER) ?? 0;
  }

}