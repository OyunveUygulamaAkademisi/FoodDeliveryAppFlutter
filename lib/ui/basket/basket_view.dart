import 'package:flutter/material.dart';
import 'package:food_delivery_app_301/app/app.router.dart';
import 'package:food_delivery_app_301/common/constants/constants.dart';
import 'package:food_delivery_app_301/common/widgets/basket_meal_item.dart';
import 'package:food_delivery_app_301/core/models/meal.dart';
import 'package:food_delivery_app_301/ui/basket/basket_view_model.dart';
import 'package:stacked/stacked.dart';

class BasketView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BasketViewModel>.reactive(
        viewModelBuilder: () => BasketViewModel(),
        onModelReady: (model) => model.setTotalPrice(),
        disposeViewModel: false,
        builder: (context, model, widget) => model.isBusy
            ? Center(child: CircularProgressIndicator())
            : Scaffold(
                appBar: AppBar(
                  title: Text(
                    "Basket",
                    style: TextStyle(color: Constants.titleColor),
                  ),
                ),
                body: model.basket!.length == 0
                    ? Center(
                        child: Text("Your Basket is empty"),
                      )
                    : Stack(
                        fit: StackFit.expand,
                        children: [
                          SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Column(
                              children: [
                                ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: model.basket!.length,
                                  physics: NeverScrollableScrollPhysics(),
                                  padding: EdgeInsets.all(4),
                                  itemBuilder: (context, index) {
                                    var meal = model.basket!.getAt(index) as Meal?;
                                    return BasketMealListItem(
                                      meal: meal,
                                      plus: () {
                                        model.plusMeal(index);
                                      },
                                      minus: () {
                                        model.minusMeal(index);
                                      },
                                    );
                                  },
                                ),
                                SizedBox(
                                  height: 200,
                                )
                              ],
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              MaterialButton(
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                                color: Constants.primaryColor,
                                onPressed: () {
                                  model.setOrder();
                                  model.navigationService.clearStackAndShow(Routes.mainView);
                                },
                                child: Container(
                                    height: 50,
                                    width: MediaQuery.of(context).size.width / 2,
                                    child: Center(child: Text("Order ${model.totalPrice}\$"))),
                              ),
                              SizedBox(
                                height: 50,
                              )
                            ],
                          )
                        ],
                      ),
              ));
  }
}
