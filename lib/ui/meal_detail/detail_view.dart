import 'package:flutter/material.dart';
import 'package:food_delivery_app_301/app/app.router.dart';
import 'package:food_delivery_app_301/common/constants/constants.dart';
import 'package:stacked/stacked.dart';
import 'detail_view_model.dart';

class DetailView extends StatelessWidget {
  final String? url;
  final String? name;
  final String? id;
  const DetailView({Key? key, this.url, this.name, this.id}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DetailViewModel>.reactive(
        viewModelBuilder: () => DetailViewModel(),
        onModelReady: (model) => model.initialize(id),
        builder: (context, model, widget) => GestureDetector(
              onTap: () {
                FocusScope.of(context).unfocus();
              },
              child: Scaffold(
                resizeToAvoidBottomInset: false,
                body: CustomScrollView(
                  slivers: [
                    SliverAppBar(
                      actions: [
                        model.mealList != null
                            ? IconButton(
                                icon: model.favorite!.containsKey(model.mealList!.meals!.first.idMeal)
                                    ? Icon(Icons.favorite)
                                    : Icon(Icons.favorite_border),
                                onPressed: () {
                                  model.setFavourite(model.mealList!.meals!.first);
                                },
                              )
                            : Container()
                      ],
                      expandedHeight: 300,
                      pinned: true,
                      floating: false,
                      flexibleSpace: FlexibleSpaceBar(
                        title: Text(
                          name!,
                          style: TextStyle(color: Constants.titleColor),
                        ),
                        background: Hero(
                            tag: url!,
                            child: ShaderMask(
                              shaderCallback: (Rect bounds) {
                                return LinearGradient(
                                  end: Alignment(0.0, 0.8),
                                  begin: Alignment(0.0, 0.2),
                                  colors: [Colors.white, Colors.grey[600]!],
                                  stops: [0, 1],
                                ).createShader(bounds);
                              },
                              child: Image.network(
                                url!,
                                fit: BoxFit.fitWidth,
                              ),
                            )),
                      ),
                    ),
                    SliverFillRemaining(
                      hasScrollBody: false,
                      child: model.isBusy
                          ? Center(child: CircularProgressIndicator())
                          : model.hasError
                              ? Text(model.modelError.toString())
                              : Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Center(
                                        child: MaterialButton(
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                                          color: Constants.primaryColor,
                                          onPressed: () {
                                            if (model.time != null && model.time.isNotEmpty) {
                                              model.addToBasket(model.mealList!.meals!.first);
                                              model.navigationService.clearStackAndShow(Routes.mainView);
                                            }
                                          },
                                          child: Container(
                                              width: MediaQuery.of(context).size.width / 2,
                                              child: Center(child: Text("Add to Basket ${model.price}\$"))),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                    )
                  ],
                ),
              ),
            ));
  }
}
