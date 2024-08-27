import 'package:flutter/material.dart';
import 'package:rsa/presentation/utills/screen_utills.dart';

class ResponsibeBuilder extends StatelessWidget {
  const ResponsibeBuilder({
    super.key,
    required this.mobile,
    required this.desktop,
    this.tablet,
  });

  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final DeviceType deviceType = ScreenUtills.getDeviceType(size.width);

    if (deviceType == DeviceType.mobile) {
      return mobile;
    } else if (deviceType == DeviceType.tablet) {
      return tablet ?? mobile;
    }
    return desktop;
  }
}
