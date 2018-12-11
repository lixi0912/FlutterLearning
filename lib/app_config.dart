import 'package:hybrid_stack_manager/hybrid_stack_manager_plugin.dart';
import 'package:flutter/material.dart';
import 'pages/fdemo.dart';

class AppConfig {
  static final GlobalKey gHomeItemPageWidgetKey =
      new GlobalKey(debugLabel: "lixicode");

  AppConfig._internal();

  static final AppConfig _singleton = new AppConfig._internal();

  static AppConfig sharedInstance() {
    Router.sharedInstance().globalKeyForRouter = gHomeItemPageWidgetKey;
    Router.sharedInstance().routerWidgetHandler =
        ({RouterOption routeOption, Key key}) {
      if (routeOption.url == "hrd://fdemo") {
        return new FDemoWidget(
          key: key,
          routerOption: routeOption,
        );
      } else {
        return null;
      }
    };
    return _singleton;
  }
}
