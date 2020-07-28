import 'package:shared_preferences/shared_preferences.dart';
import 'package:synchronized/synchronized.dart';

class SharedPreferencesDataUtils {
  static SharedPreferencesDataUtils _singleton;
  static SharedPreferences _prefs;
  static Lock _lock = Lock();

  static Future<SharedPreferencesDataUtils> getInstance() async {
    if (_singleton == null) {
      await _lock.synchronized(() async {
        if (_singleton == null) {
          // 保持本地实例直到完全初始化。
          var singleton = SharedPreferencesDataUtils._();
          await singleton._init();
          _singleton = singleton;
        }
      });
    }
    return _singleton;
  }

  SharedPreferencesDataUtils._();
  
  Future _init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static const String THEME_PREF = "AppTheme";
  static set(String key, value) {
    if (_prefs == null) return null;
    if (value is String) {
      _prefs.setString(key, value);
    } else if (value is num) {
      _prefs.setInt(key, value);
    } else if (value is double) {
      _prefs.setDouble(key, value);
    } else if (value is bool) {
      _prefs.setBool(key, value);
    } else if (value is List) {
      _prefs.setStringList(key, value.cast<String>());
    }
  }

  /// 返回数据data -> replace -> null
  static get(String key, [dynamic replace]) {
    if (_prefs == null) return null;
    var data = _prefs.get(key);
    return data ?? replace ?? null;
  }

  static remove(String key) async {
    if (_prefs == null) return null;
    _prefs.remove(key);
  }

  static removeAll() async {
    if (_prefs == null) return null;
    _prefs.clear();
  }
}
