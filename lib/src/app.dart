import 'package:flutter/material.dart';

import 'utils/logger.dart';
import 'routes.dart';
import 'locators.dart';
import 'styles.dart';

final _log = Logger(printer: CustomPrinter('App'));

//TODO App Class Name
class AgathaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _log.v("App (Re)Loaded");
    return MaterialApp(
      title: 'Agatha',
      theme: themeData,
      initialRoute: StartUpRoute,
      onGenerateRoute: onGenerateRoute,
      navigatorKey: locator<NavigationService>().navigatorKey,
      debugShowCheckedModeBanner: false,
    );
  }
}
