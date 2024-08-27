enum DeviceType {
  mobile,
  tablet,
  desktop,
}

class ScreenUtills {
  static const double mobileMaxSize = 540;
  static const double tabletMaxSize = 800;
  static const double desktopMinSize = 1008;

  static DeviceType getDeviceType(double width) {
    if (width < ScreenUtills.mobileMaxSize) {
      return DeviceType.mobile;
    } else if (width >= ScreenUtills.mobileMaxSize &&
        width < ScreenUtills.tabletMaxSize) {
      return DeviceType.tablet;
    }
    return DeviceType.desktop;
  }
}
