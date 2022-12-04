import 'package:food_delivery_app_301/ui/basket/basket_view.dart';
import 'package:food_delivery_app_301/ui/categories/categories_view.dart';
import 'package:food_delivery_app_301/ui/home/home_view.dart';
import 'package:food_delivery_app_301/ui/main/main_view.dart';
import 'package:food_delivery_app_301/ui/meal_detail/detail_view.dart';
import 'package:food_delivery_app_301/ui/near_you/near_view.dart';
import 'package:food_delivery_app_301/ui/splash/splash_view.dart';
import 'package:stacked/stacked_annotations.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: SplashView, initial: true),
    MaterialRoute(page: HomeView),
    MaterialRoute(page: MainView),
    MaterialRoute(page: DetailView),
    MaterialRoute(page: CategoriesView),
    MaterialRoute(page: NearView),
    MaterialRoute(page: BasketView),
  ],
)
class App {}
