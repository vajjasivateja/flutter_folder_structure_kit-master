import 'package:flutter_structure/core/data_source/ApiServiceNew.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_structure/core/bloc/base_bloc/base_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../data_source/TokenManager.dart';

final serviceLocator = GetIt.instance;

Future<void> initializeDependencies() async {
  final prefs = await SharedPreferences.getInstance();

  serviceLocator
    ..registerSingleton<SharedPreferences>(prefs)
    ..registerSingleton<TokenManager>(TokenManager(prefs))

    /// API Service Base
    ..registerFactory<ApiServiceNew>(
      () => ApiServiceNew(
        prefs: serviceLocator<SharedPreferences>(),
        tokenManager: serviceLocator<TokenManager>(),
      ),
    )
    ..registerFactory(() => BaseBloc());
}
