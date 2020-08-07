import 'package:get_it/get_it.dart';

import 'services/services.dart';
import 'utils/logger.dart';

export 'services/services.dart';

GetIt locator = GetIt.instance;

final _log = Logger(printer: CustomPrinter('Locator'));
Future locatorSetup() async {
  _log.v("Setup Start");
  _log.v("Registering Navigation Service");
  locator.registerSingleton<NavigationService>(NavigationService());
  _log.v("Setup Finish");
}
