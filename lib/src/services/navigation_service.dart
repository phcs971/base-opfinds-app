import 'package:flutter/widgets.dart';

class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = new GlobalKey<NavigatorState>();

  Future<dynamic> push(String routeName) {
    return navigatorKey.currentState.pushNamed(routeName);
  }

  void pop(dynamic result) {
    return navigatorKey.currentState.pop(result);
  }
}
