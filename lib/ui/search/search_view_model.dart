import 'package:flutter/material.dart';
import 'package:food_delivery_app_301/app/app_base_view_model.dart';
import 'package:food_delivery_app_301/core/models/request/search_request.dart';
import 'package:food_delivery_app_301/core/models/response/meal_detail_list_response.dart';

class SearchViewModel extends AppBaseViewModel {
  TextEditingController controller = new TextEditingController();
  MealDetailListResponse? mealList;

  searchMeals(String ingredient) async {
    SearchRequest searchRequest = SearchRequest()..s = ingredient;
    await repository!.searchMealByName(searchRequest.s!).then((mealList) {
      this.mealList = mealList;
      notifyListeners();
    }).catchError((error) {});
  }
}
