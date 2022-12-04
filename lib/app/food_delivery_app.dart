import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_delivery_app_301/app/app.router.dart';
import 'package:food_delivery_app_301/app/app_base_view_model.dart';
import 'package:food_delivery_app_301/core/di/get_it.dart';
import 'package:food_delivery_app_301/ui/main/main_view.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class FoodDeliveryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(<DeviceOrientation>[
      DeviceOrientation.portraitUp,
    ]);

    return ViewModelBuilder<AppBaseViewModel>.reactive(
        viewModelBuilder: () => getIt<AppBaseViewModel>(),
        onModelReady: (viewModel) => viewModel.initialise(),
        builder: (context, viewModel, child) => MaterialApp(
              navigatorKey: StackedService.navigatorKey,
              onGenerateRoute: StackedRouter().onGenerateRoute,
              navigatorObservers: [StackedService.routeObserver],
              title: "Food Delivery App",
              debugShowCheckedModeBanner: false,
            ));
  }
}
