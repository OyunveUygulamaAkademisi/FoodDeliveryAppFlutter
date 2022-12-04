import 'package:flutter/material.dart';
import 'package:food_delivery_app_301/app/food_delivery_app.dart';
import 'package:food_delivery_app_301/core/di/get_it.dart';
import 'package:food_delivery_app_301/core/models/meal.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupDI();
  await Hive.initFlutter();
  Hive.registerAdapter(MealAdapter());
  runApp(FoodDeliveryApp());
}
