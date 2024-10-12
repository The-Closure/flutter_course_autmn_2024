import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

GetIt serviceLocater = GetIt.instance;

setup() async {
  serviceLocater.registerSingleton<DateTime>(DateTime.now());

  serviceLocater.registerSingleton<SharedPreferences>(
      await SharedPreferences.getInstance());
}
