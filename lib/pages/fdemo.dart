import 'package:flutter/material.dart';
import 'package:hybrid_stack_manager/hybrid_stack_manager_plugin.dart';

class FDemoWidget extends StatelessWidget {
  final RouterOption routerOption;

  FDemoWidget({Key key, this.routerOption}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map map = Utils.parseUniquePageName(routerOption.userInfo);
    return new Scaffold(
      appBar: new AppBar(
        leading: new GestureDetector(
          child: new IconButton(
              tooltip: "back",
              icon: new Icon(Icons.arrow_back),
              onPressed: HybridStackManagerPlugin.hybridStackManagerPlugin
                  .popCurPage()),
        ),
      ),
      body: new Center(
          child: new GestureDetector(
            child: new Text("Flutter second page"),
            onTap: () {
              HybridStackManagerPlugin.hybridStackManagerPlugin
                  .openUrlFromNative(url: "hrd://ndemo");
            },
          )),
      floatingActionButton: null,
    );
  }
}
