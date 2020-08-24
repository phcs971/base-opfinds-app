import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

import 'package:device_preview/device_preview.dart';

import 'src/app.dart';
import 'src/locators.dart';
import 'src/utils/logger.dart';

void main() async {
  log.v("<Main> Start");

  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIOverlays([]);

  log.v("<Main> Locator Setup - Start");
  await locatorSetup();
  log.v("<Main> Locator Setup - Finish");

  log.v("<Main> Run App");

  runApp(DevicePreview(enabled: false, builder: (context) => )); //TODO App 
}
