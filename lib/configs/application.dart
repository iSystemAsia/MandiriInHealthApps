import 'package:mandiri_in_health/models/model.dart';
import 'package:package_info_plus/package_info_plus.dart';

class Application {
  static bool debug = true;
  static String domain = 'http://192.168.15.42:8000';
  static DeviceModel? device;
  static PackageInfo? packageInfo;
  static SettingModel setting = SettingModel.fromDefault();

  ///Singleton factory
  static final Application _instance = Application._internal();

  factory Application() {
    return _instance;
  }

  Application._internal();
}
