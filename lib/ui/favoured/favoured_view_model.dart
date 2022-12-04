import 'package:food_delivery_app_301/app/app_base_view_model.dart';
import 'package:hive/hive.dart';

class FavouredViewModel extends AppBaseViewModel {
  Box? get favoured => repository!.favouredMealsBox;

  init() async {
    await Hive.openBox('favoured');
    repository!.setFavouredMeals(Hive.box('favoured'));
    notifyListeners();
  }
}
