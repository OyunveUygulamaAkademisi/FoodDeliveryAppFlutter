import 'package:food_delivery_app_301/core/models/request/area_request.dart';
import 'package:food_delivery_app_301/core/models/response/meal_list_response.dart';
import 'package:food_delivery_app_301/app/app_base_view_model.dart';

class AreaViewModel extends AppBaseViewModel {
  MealListResponse? mealList;

  void initialize(String? area) async {
    setBusy(true);
    if (mealList == null) {
      await getMealsByArea(area);
    }
    notifyListeners();
    setBusy(false);
  }

  getMealsByArea(String? area) async {
    var areaRequest = AreaRequest()..a = area;
    await repository!.getMealsByArea(areaRequest.a!).then((mealList) {
      this.mealList = mealList;
      notifyListeners();
    }).catchError((error) {});
  }
}
