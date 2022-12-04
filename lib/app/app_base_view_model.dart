import 'package:food_delivery_app_301/core/di/get_it.dart';
import 'package:food_delivery_app_301/core/repository/repository.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class AppBaseViewModel extends BaseViewModel {
  NavigationService navigationService = getIt<NavigationService>();
  Repository repository = getIt<Repository>();
  Box? get basket => repository!.basketBox;
  Box? get favorite => repository!.favouredMealsBox;

  initialise() {
    openHive();
  }

  Future openHive() async {
    await Hive.openBox('basket');
    await Hive.openBox('orders');
    await Hive.openBox('favoured');
    return this;
  }

  @override
  Future<void> dispose() async {
    if (Hive.box('basket').isOpen) Hive.box('basket').compact();
    if (Hive.box('orders').isOpen) Hive.box('orders').compact();
    if (Hive.box('favoured').isOpen) Hive.box('favoured').compact();
    super.dispose();
  }
}
