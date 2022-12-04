import 'package:food_delivery_app_301/core/models/request/area_request.dart';
import 'package:food_delivery_app_301/core/models/request/category_request.dart';
import 'package:food_delivery_app_301/core/models/request/ingredients_request.dart';
import 'package:food_delivery_app_301/app/app_base_view_model.dart';
import 'package:food_delivery_app_301/core/models/response/area_list_response.dart';
import 'package:food_delivery_app_301/core/models/response/categories_response.dart';
import 'package:food_delivery_app_301/core/models/response/ingredient_list_response.dart';
import 'package:food_delivery_app_301/core/models/response/meal_list_response.dart';
import 'package:hive/hive.dart';

class HomeViewModel extends AppBaseViewModel {
  late Categories categoryList;
  late AreaListReponse areaList;
  MealListResponse? mealList;
  IngredientsListResponse? ingredientList;

  void initialize() async {
    setBusy(true);
    await Hive.openBox('basket');
    repository.setBasket(Hive.box('basket'));
    if (mealList == null) {
      await getCategories();
      await getAreaList("American");
      await getMealsByArea("American");
      await getIngredientsList("list");
    }
    notifyListeners();
    setBusy(false);
  }

  getCategories() async {
    await repository.getCategories().then((categories) {
      this.categoryList = categories;
      notifyListeners();
    }).catchError((error) {});
  }

  getAreaList(String area) async {
    var areaRequest = AreaRequest()..a = area;
    await repository.getAreaList(areaRequest.a!).then((areaList) {
      this.areaList = areaList;
      notifyListeners();
    }).catchError((error) {});
  }

  getIngredientsList(String ingredient) async {
    var ingredientsRequest = IngredientsRequest()..i = ingredient;
    await repository.getIngredientsList(ingredientsRequest.i!).then((ingredientList) {
      this.ingredientList = ingredientList;
      notifyListeners();
    }).catchError((error) {});
  }

  getMealsByCategory(String category) async {
    var categoryRequest = CategoryRequest()..c = category;
    await repository.getMealsByCategory(categoryRequest.c!).then((mealList) {
      this.mealList = mealList;
      notifyListeners();
    }).catchError((error) {});
  }

  getMealsByArea(String area) async {
    var areaRequest = AreaRequest()..a = area;
    await repository.getMealsByArea(areaRequest.a!).then((mealList) {
      this.mealList = mealList;
      notifyListeners();
    }).catchError((error) {});
  }

  getMealsByIngredients(String ingredients) async {
    var ingredientsRequest = IngredientsRequest()..i = ingredients;
    await repository.getMealsByIngredients(ingredientsRequest.i!).then((mealList) {
      this.mealList = mealList;
      notifyListeners();
    }).catchError((error) {});
  }
}
