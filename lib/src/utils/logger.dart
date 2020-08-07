export 'package:logger/logger.dart';
import 'package:logger/logger.dart';

class CustomPrinter extends LogPrinter {
  final String className;

  CustomPrinter(this.className);

  @override
  List<String> log(LogEvent event) {
    var color = {
      Level.verbose: AnsiColor.fg(AnsiColor.grey(0.5)),
      Level.debug: AnsiColor.fg(6),
      Level.info: AnsiColor.fg(2),
      Level.warning: AnsiColor.fg(3),
      Level.error: AnsiColor.fg(196),
      Level.wtf: AnsiColor.fg(199),
    }[event.level];
    var prefix = {
      Level.verbose: "[VERB]",
      Level.debug: "[DEBG]",
      Level.info: "[INFO]",
      Level.warning: "[WARN]",
      Level.error: "[ERR!]",
      Level.wtf: "[WTF!]",
    }[event.level];
    return [color('$prefix <$className> ${event.message}')];
  }
}
