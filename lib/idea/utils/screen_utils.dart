enum DeviceType {
  mobile,
  tablet,
  desktop,
}


class screenUtils {
  static const double mobileMaxSize = 540;
  static const double tabletMaxSize = 800;
  static const double desktopMinSize = 1008;

  static DeviceType getDeviceType(double width) {
    if (width < screenUtils.mobileMaxSize) {
      return DeviceType.mobile;
    } else if (width >= screenUtils.mobileMaxSize &&
        width < screenUtils.tabletMaxSize) {
      return DeviceType.tablet;
    }
    return DeviceType.desktop;
  }
}