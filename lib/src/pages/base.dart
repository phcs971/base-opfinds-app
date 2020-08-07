import 'package:flutter/material.dart';

enum DeviceScreenType { Desktop, Tablet, Mobile }

class SizingInformation {
  final Orientation orientation;
  final DeviceScreenType deviceType;
  final Size screenSize, localWidgetSize;

  SizingInformation({
    this.orientation,
    this.deviceType,
    this.screenSize,
    this.localWidgetSize,
  });
}

class ResponsiveBuilder extends StatelessWidget {
  final Widget Function(BuildContext, SizingInformation) builder;
  const ResponsiveBuilder(this.builder);

  DeviceScreenType getDeviceType(MediaQueryData mq) {
    final deviceWidth = mq.size.shortestSide;

    if (deviceWidth > 950) {
      return DeviceScreenType.Desktop;
    }

    if (deviceWidth > 600) {
      return DeviceScreenType.Tablet;
    }

    return DeviceScreenType.Mobile;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, c) {
        final mq = MediaQuery.of(context);
        var sizingInformation = SizingInformation(
          orientation: mq.orientation,
          screenSize: mq.size,
          localWidgetSize: Size(c.maxWidth, c.maxHeight),
          deviceType: getDeviceType(mq),
        );
        return builder(context, sizingInformation);
      },
    );
  }
}

class ScreenTypeLayout extends StatelessWidget {
  final Widget mobile, watch, tablet, desktop;

  const ScreenTypeLayout({@required this.mobile, this.tablet, this.desktop, this.watch});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder((context, inf) {
      if (inf.deviceType == DeviceScreenType.Tablet) return tablet ?? mobile;
      if (inf.deviceType == DeviceScreenType.Desktop) return desktop ?? tablet ?? mobile;
      return mobile;
    });
  }
}

class OrientationLayout extends StatelessWidget {
  final Widget landscape, portrait;

  OrientationLayout({@required this.portrait, this.landscape});

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).orientation == Orientation.landscape) return landscape ?? portrait;
    return portrait;
  }
}
