import 'package:flutter/material.dart';
import 'package:hybrid_stack_manager/hybrid_stack_manager_plugin.dart';
import 'app_config.dart';

void main() async {
  AppConfig.sharedInstance();

  HybridStackManagerPlugin plugin =
      HybridStackManagerPlugin.hybridStackManagerPlugin;
  Map args = await plugin.getMainEntryParams();
  runApp(new Launcher());
  if (args != null && args['url'] != null) {
    RouterOption option = new RouterOption(
        url: args['url'], query: args['query'], params: args['params']);
    Router.sharedInstance()
        .pushPageWithOptionsFromFlutter(routeOption: option, animated: false);
  }
}

class Launcher extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String title = 'Flutter Demo';
    return new MaterialApp(
      title: title,
      home: new _LauncherPage(
          key: AppConfig.gHomeItemPageWidgetKey, title: title),
    );
  }
}

class _LauncherPage extends StatefulWidget {
  final String title;

  _LauncherPage({Key key, this.title}) : super(key: key);

  @override
  _LauncherState createState() => new _LauncherState();
}

class _LauncherState extends State<_LauncherPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new InkWell(
          child: new Text("hello world"),
          onTap: () {
            HybridStackManagerPlugin.hybridStackManagerPlugin
                .openUrlFromNative(url: "hrd://fdemo");
          },
        ),
      ),
    );
  }
}
