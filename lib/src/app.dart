import 'package:flutter/material.dart';

import 'package:device_preview/device_preview.dart';

import 'utils/utils.dart';
import 'routes.dart';
import 'locators.dart';
import 'styles.dart';

//TODO App Name
class APPNAME_App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    log.v("<App> (Re)Loaded");
    return MaterialApp(
      title: longAppName,
      theme: themeData,
      initialRoute: HomeRoute,
      onGenerateRoute: onGenerateRoute,
      locale: DevicePreview.of(context).locale,
      builder: DevicePreview.appBuilder,
      navigatorKey: locator<NavigationService>().navigatorKey,
      debugShowCheckedModeBanner: false,
    );
  }
}
