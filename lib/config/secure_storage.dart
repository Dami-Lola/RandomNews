import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../constants/storage_keys.dart';

FlutterSecureStorage secureStorage = const FlutterSecureStorage();

abstract class Storage {

  static Future<String?> getLogin() async {
    String? data = await secureStorage.read(key: LOGIN);
    return data;
  }

  static Future<void> storeLogin(String auth) async {
    await secureStorage.write(key: LOGIN, value: auth);
  }

  static Future<void> deleteData() async {
    await secureStorage.delete(key: LOGIN);
  }

  static Future<String?> getBioLogin() async {
    String? data = await secureStorage.read(key: BIOLOGIN);
    return data;
  }

  static Future<void> storeBioLogin(String auth) async {
    await secureStorage.write(key: BIOLOGIN, value: auth);
  }

}