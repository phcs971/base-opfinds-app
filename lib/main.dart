import 'package:flutter/widgets.dart';

import 'src/app.dart';
import 'src/locators.dart';
import 'src/utils/logger.dart';

final _log = Logger(printer: CustomPrinter('Main'));
void main() async {
  _log.v("Start");

  _log.v("Locator Setup - Start");
  await locatorSetup();
  _log.v("Locator Setup - Finish");

  _log.v("Run App");
  runApp(AgathaApp());
}
