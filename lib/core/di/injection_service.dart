import 'package:get_it/get_it.dart';
import 'package:flutter_structure/core/bloc/base_bloc/base_bloc.dart';
import 'package:flutter_structure/core/data_source/data_source_app/api_service.dart';

final serviceLocator = GetIt.instance;

Future<void> initializeDependencies() async {
  serviceLocator

    /// API Service Base
    ..registerLazySingleton(() => ApiService())
    ..registerFactory(() => BaseBloc());

}
