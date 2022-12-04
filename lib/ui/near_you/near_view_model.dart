import 'package:food_delivery_app_301/app/app_base_view_model.dart';
import 'package:food_delivery_app_301/core/models/request/area_request.dart';
import 'package:food_delivery_app_301/core/models/response/meal_list_response.dart';
import 'package:hive/hive.dart';

class NearViewModel extends AppBaseViewModel {
  MealListResponse? mealList;

  void initialize() async {
    setBusy(true);
    await Hive.openBox('basket');
    repository!.setBasket(Hive.box('basket'));
    if (mealList == null) {
      await getMealsByArea("American");
    }
    notifyListeners();
    setBusy(false);
  }

  getMealsByArea(String area) async {
    var areaRequest = AreaRequest()..a = area;
    await repository!.getMealsByArea(areaRequest.a!).then((mealList) {
      this.mealList = mealList;
      notifyListeners();
    }).catchError((error) {});
  }
}
