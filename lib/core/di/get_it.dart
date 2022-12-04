import 'package:dio/dio.dart';
import 'package:food_delivery_app_301/app/app_base_view_model.dart';
import 'package:food_delivery_app_301/core/api/api_client.dart';
import 'package:food_delivery_app_301/core/error/default_error_factory.dart';
import 'package:food_delivery_app_301/core/error/error_factory.dart';
import 'package:food_delivery_app_301/core/error/error_separator.dart';
import 'package:food_delivery_app_301/core/repository/repository.dart';
import 'package:food_delivery_app_301/core/services/api_service.dart';
import 'package:get_it/get_it.dart';
import 'package:stacked_services/stacked_services.dart';

final getIt = GetIt.instance;

void setupDI() {
  getIt.registerLazySingleton(() => AppBaseViewModel());
  getIt.registerLazySingleton(() => NavigationService());

  //NETWORK
  getIt.registerLazySingleton<Dio>(() => ApiClient().getDio());
  getIt.registerLazySingleton(() => ApiService(getIt.get()));
  getIt.registerLazySingleton(() => Repository(getIt.get(), getIt.get()));

  //ERROR
  getIt.registerLazySingleton(() => ErrorFactory);
  getIt.registerLazySingleton(() => DefaultErrorFactory());
  getIt.registerLazySingleton(() => ErrorSeparator(getIt.get()));
}
