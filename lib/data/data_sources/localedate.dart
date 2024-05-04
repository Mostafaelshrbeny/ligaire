import 'package:hive/hive.dart';

class HiveLocaleData {
  static Box? loginbox;
  static openbox(String boxname) async {
    loginbox = await Hive.openBox(boxname);
  }
}
