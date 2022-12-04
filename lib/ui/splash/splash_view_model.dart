import 'package:flutter/material.dart';
import 'package:food_delivery_app_301/app/app.router.dart';
import 'package:food_delivery_app_301/app/app_base_view_model.dart';

class SplashViewModel extends AppBaseViewModel {
  init(BuildContext context) {
    openHive();
    Future<void>.delayed(const Duration(seconds: 3), () => navigationService.navigateTo(Routes.mainView));
  }
}
