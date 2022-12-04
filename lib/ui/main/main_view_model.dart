import 'package:food_delivery_app_301/app/app_base_view_model.dart';

class MainViewModel extends AppBaseViewModel {
  int _currentTabIndex = 0;
  int get currentTabIndex => _currentTabIndex;
  bool _reverse = false;
  bool get reverse => _reverse;

  init() {}

  setTabIndex(int value) {
    if (value < _currentTabIndex) {
      _reverse = true;
    }
    _currentTabIndex = value;
    notifyListeners();
  }
}
