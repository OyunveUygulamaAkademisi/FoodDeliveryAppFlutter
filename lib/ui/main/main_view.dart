import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_delivery_app_301/common/helpers/create_bottom_nav_item.dart';
import 'package:food_delivery_app_301/ui/main/main_view_model.dart';
import 'package:stacked/stacked.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MainViewModel>.reactive(
        viewModelBuilder: () => MainViewModel(),
        disposeViewModel: false,
        builder: (context, model, child) => Scaffold(
              extendBody: true,
              body: getViewForIndex(model.currentTabIndex),
              bottomNavigationBar: BottomNavigationBar(
                elevation: 0,
                type: BottomNavigationBarType.fixed,
                selectedItemColor: Colors.green,
                unselectedItemColor: Colors.grey,
                selectedFontSize: 13,
                unselectedFontSize: 13,
                items: [
                  createNavItem(TabItem.Home),
                  createNavItem(TabItem.Search),
                  createNavItem(TabItem.Orders),
                  createNavItem(TabItem.Favorite),
                ],
                onTap: (value) {
                  model.setTabIndex(value);
                },
                currentIndex: model.currentTabIndex,
              ),
            ));
  }
}
