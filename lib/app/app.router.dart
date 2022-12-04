// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i9;
import 'package:flutter/material.dart';
import 'package:food_delivery_app_301/ui/basket/basket_view.dart' as _i8;
import 'package:food_delivery_app_301/ui/categories/categories_view.dart'
    as _i6;
import 'package:food_delivery_app_301/ui/home/home_view.dart' as _i3;
import 'package:food_delivery_app_301/ui/main/main_view.dart' as _i4;
import 'package:food_delivery_app_301/ui/meal_detail/detail_view.dart' as _i5;
import 'package:food_delivery_app_301/ui/near_you/near_view.dart' as _i7;
import 'package:food_delivery_app_301/ui/splash/splash_view.dart' as _i2;
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i10;

class Routes {
  static const splashView = '/';

  static const homeView = '/home-view';

  static const mainView = '/main-view';

  static const detailView = '/detail-view';

  static const categoriesView = '/categories-view';

  static const nearView = '/near-view';

  static const basketView = '/basket-view';

  static const all = <String>{
    splashView,
    homeView,
    mainView,
    detailView,
    categoriesView,
    nearView,
    basketView,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.splashView,
      page: _i2.SplashView,
    ),
    _i1.RouteDef(
      Routes.homeView,
      page: _i3.HomeView,
    ),
    _i1.RouteDef(
      Routes.mainView,
      page: _i4.MainView,
    ),
    _i1.RouteDef(
      Routes.detailView,
      page: _i5.DetailView,
    ),
    _i1.RouteDef(
      Routes.categoriesView,
      page: _i6.CategoriesView,
    ),
    _i1.RouteDef(
      Routes.nearView,
      page: _i7.NearView,
    ),
    _i1.RouteDef(
      Routes.basketView,
      page: _i8.BasketView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.SplashView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => _i2.SplashView(),
        settings: data,
      );
    },
    _i3.HomeView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => _i3.HomeView(),
        settings: data,
      );
    },
    _i4.MainView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i4.MainView(),
        settings: data,
      );
    },
    _i5.DetailView: (data) {
      final args = data.getArgs<DetailViewArguments>(
        orElse: () => const DetailViewArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => _i5.DetailView(
            key: args.key, url: args.url, name: args.name, id: args.id),
        settings: data,
      );
    },
    _i6.CategoriesView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => _i6.CategoriesView(),
        settings: data,
      );
    },
    _i7.NearView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => _i7.NearView(),
        settings: data,
      );
    },
    _i8.BasketView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => _i8.BasketView(),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;
  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

class DetailViewArguments {
  const DetailViewArguments({
    this.key,
    this.url,
    this.name,
    this.id,
  });

  final _i9.Key? key;

  final String? url;

  final String? name;

  final String? id;
}

extension NavigatorStateExtension on _i10.NavigationService {
  Future<dynamic> navigateToSplashView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.splashView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToMainView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.mainView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToDetailView({
    _i9.Key? key,
    String? url,
    String? name,
    String? id,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.detailView,
        arguments: DetailViewArguments(key: key, url: url, name: name, id: id),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToCategoriesView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.categoriesView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToNearView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.nearView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToBasketView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.basketView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
