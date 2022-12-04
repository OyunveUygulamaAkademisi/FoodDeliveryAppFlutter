import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app_301/app/app.router.dart';
import 'package:food_delivery_app_301/common/constants/constants.dart';
import 'package:food_delivery_app_301/common/widgets/area_item.dart';
import 'package:food_delivery_app_301/common/widgets/category_item.dart';
import 'package:food_delivery_app_301/common/widgets/meal_item.dart';
import 'package:food_delivery_app_301/common/widgets/section_header.dart';
import 'package:food_delivery_app_301/core/di/get_it.dart';
import 'package:food_delivery_app_301/ui/area/area_view.dart';
import 'package:food_delivery_app_301/ui/category_detail/category_detail.dart';
import 'package:food_delivery_app_301/ui/meal_detail/detail_view.dart';
import 'package:food_delivery_app_301/ui/home/home_view_model.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
        viewModelBuilder: () => HomeViewModel(),
        disposeViewModel: false,
        fireOnModelReadyOnce: false,
        onModelReady: (model) => model.initialize(),
        builder: (context, model, widget) => model.isBusy
            ? Center(child: CircularProgressIndicator())
            : model.hasError
                ? Center(child: Text(model.modelError.toString()))
                : Scaffold(
                    appBar: AppBar(
                      automaticallyImplyLeading: false,
                      title: Text(
                        "Food Delivery App",
                        style: TextStyle(color: Constants.titleColor),
                      ),
                      actions: [
                        Stack(
                          children: [
                            if (model.basket!.length > 0)
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    height: 20,
                                    width: 20,
                                    decoration:
                                        BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(45)),
                                    child: Center(
                                      child: Text(
                                        model.repository!.basketBox!.length.toString(),
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            IconButton(
                                icon: Icon(Icons.shopping_basket),
                                onPressed: () {
                                  model.navigationService.navigateTo(Routes.basketView);
                                }),
                          ],
                        )
                      ],
                    ),
                    body: SingleChildScrollView(
                      child: SafeArea(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SectionHeader(
                              title: "Near You",
                              onPressed: () {
                                model.navigationService.navigateTo(Routes.nearView);
                              },
                            ),
                            Container(
                              height: 350,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: model.mealList!.meals!.length > 10 ? 10 : model.mealList!.meals!.length,
                                padding: EdgeInsets.all(4),
                                itemBuilder: (context, index) {
                                  return OpenContainer(
                                    closedElevation: 0,
                                    openElevation: 0,
                                    closedColor: Colors.transparent,
                                    openColor: Colors.transparent,
                                    transitionType: ContainerTransitionType.fade,
                                    transitionDuration: const Duration(milliseconds: 400),
                                    openBuilder: (context, action) {
                                      return DetailView(
                                          id: model.mealList!.meals![index].idMeal,
                                          name: model.mealList!.meals![index].strMeal,
                                          url: model.mealList!.meals![index].strMealThumb);
                                    },
                                    closedBuilder: (context, action) {
                                      return MealListItem(
                                          name: model.mealList!.meals![index].strMeal,
                                          url: model.mealList!.meals![index].strMealThumb);
                                    },
                                  );
                                },
                              ),
                            ),
                            SectionHeader(
                              title: "Categories",
                              onPressed: () {
                                model.navigationService.navigateTo(Routes.categoriesView);
                              },
                            ),
                            Container(
                              height: 350,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: model.categoryList.categories!.length > 10
                                    ? 10
                                    : model.categoryList.categories!.length,
                                padding: EdgeInsets.all(4),
                                itemBuilder: (context, index) {
                                  return OpenContainer(
                                    closedElevation: 0,
                                    openElevation: 0,
                                    closedColor: Colors.transparent,
                                    openColor: Colors.transparent,
                                    transitionType: ContainerTransitionType.fade,
                                    transitionDuration: const Duration(milliseconds: 400),
                                    openBuilder: (context, action) {
                                      return CategoryDetailView(
                                          name: model.categoryList.categories![index].strCategory);
                                    },
                                    closedBuilder: (context, action) {
                                      return CategoryItem(
                                          name: model.categoryList.categories![index].strCategory,
                                          url: model.categoryList.categories![index].strCategoryThumb,
                                          description: model.categoryList.categories![index].strCategoryDescription);
                                    },
                                  );
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Try Local Foods",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 30,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 110,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: model.areaList.meals!.length,
                                padding: EdgeInsets.all(4),
                                itemBuilder: (context, index) {
                                  return OpenContainer(
                                    closedElevation: 0,
                                    openElevation: 0,
                                    closedColor: Colors.transparent,
                                    openColor: Colors.transparent,
                                    transitionType: ContainerTransitionType.fade,
                                    transitionDuration: const Duration(milliseconds: 400),
                                    openBuilder: (context, action) {
                                      return AreaView(area: model.areaList.meals![index].strArea);
                                    },
                                    closedBuilder: (context, action) {
                                      return AreaListItem(
                                        name: model.areaList.meals![index].strArea,
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ));
  }
}
