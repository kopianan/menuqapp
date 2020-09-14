import 'package:dartz/dartz.dart';
import 'package:feroza/util/setting.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Pref {
  Future<void> saveDeviceToken(String token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    try {
      await prefs.setString(Setting().getDeviceToken, token);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<Either<Exception, String>> loadDeviceToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    try {
      final _result = prefs.getString(Setting().getDeviceToken);
      if (_result == null)
        return left(Exception("No User"));
      else
        return right(_result);
    } catch (e) {
      return left(Exception(e.toString()));
    }
  }
}
