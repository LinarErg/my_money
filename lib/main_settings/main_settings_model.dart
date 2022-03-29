
import 'package:shared_preferences/shared_preferences.dart';

Future<void> saveSettingsApp(Map<String, String> map) async {

  final preference = await SharedPreferences.getInstance();
  for(var item in map.entries){
    preference.setString(item.key, item.value);
  }
}

Future<Map> loadSettingsApp(List<String> list) async {
  final preference = await SharedPreferences.getInstance();

  var map = {};
  for (var listItem in list) {
    map[listItem] = preference.getString(listItem) ?? '';
  }
  return map;
}