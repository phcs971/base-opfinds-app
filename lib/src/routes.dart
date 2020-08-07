import 'package:flutter/material.dart';

import 'utils/logger.dart';

const StartUpRoute = '/start';
const HomeRoute = '/';
const LoginRoute = '/login';

final _log = Logger(printer: CustomPrinter('Router'));

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  Route<dynamic> _page(Widget widget) => MaterialPageRoute(
        builder: (BuildContext context) => widget,
        settings: settings,
      );

  _log.i('Routing to ${settings.name}');

  switch (settings.name) {
    case StartUpRoute: // TODO StartUp
      return _page(Container());
    case HomeRoute: //TODO Home
      return _page(Container());
    case LoginRoute: //TODO Login
      return _page(Container());
    default: //TODO On Unknown Route
      return _page(Container());
  }
}
