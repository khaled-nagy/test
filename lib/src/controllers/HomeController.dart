

import 'package:mvc_pattern/mvc_pattern.dart';

class HomeController extends ControllerMVC {

    factory HomeController() {
    if (_this == null) _this = HomeController._();
    return _this;
  }
  static HomeController _this;

  HomeController._();

  static HomeController get con => _this;

}