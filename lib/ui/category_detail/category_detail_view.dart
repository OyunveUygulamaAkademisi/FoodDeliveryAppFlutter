import 'package:food_delivery_app_301/core/models/request/category_request.dart';
import 'package:food_delivery_app_301/core/models/response/meal_list_response.dart';
import 'package:food_delivery_app_301/app/app_base_view_model.dart';

class CategoryDetailViewModel extends AppBaseViewModel {
  MealListResponse? mealList;

  void initialize(String? name) async {
    setBusy(true);
    if (mealList == null) {
      await getMealsByCategory(name);
    }
    notifyListeners();
    setBusy(false);
  }

  getMealsByCategory(String? category) async {
    var categoryRequest = CategoryRequest()..c = category;
    await repository!.getMealsByCategory(categoryRequest.c!).then((mealList) {
      this.mealList = mealList;
      notifyListeners();
    }).catchError((error) {});
  }
}
