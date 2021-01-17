import 'dart:io';

import 'package:device_info/device_info.dart';
import 'package:package_info/package_info.dart';

class UserAppInfo {
  UserAppInfo({
    this.appName,
    this.version,
    this.buildNumber,
    this.device,
    this.sdkVersion,
  });

  final String appName;
  final String version;
  final String buildNumber;
  final Device device;
  final String sdkVersion;

  String getUserAgent() => Uri.encodeFull(
      '$appName/$version-$buildNumber (${device.os} ${device.version} ${device.name}) $sdkVersion');

  static Future<UserAppInfo> getUserAppInfo() async {
    final PackageInfo packageInfo = await PackageInfo.fromPlatform();
    final DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();

    final Device device = await () async {
      if (Platform.isIOS) {
        final IosDeviceInfo iOSDeviceInfo = await deviceInfo.iosInfo;

        return Device(
          os: iOSDeviceInfo.systemName,
          version: iOSDeviceInfo.systemVersion,
          name: iOSDeviceInfo.name,
          osType: 'ios',
          id: iOSDeviceInfo.identifierForVendor,
        );
      } else {
        final AndroidDeviceInfo androidDeviceInfo =
            await deviceInfo.androidInfo;

        return Device(
          os: 'Android',
          version: androidDeviceInfo.version.sdkInt.toString(),
          name: androidDeviceInfo.model,
          osType: 'android',
          id: androidDeviceInfo.androidId,
        );
      }
    }();

    return UserAppInfo(
      appName: packageInfo.appName,
      version: packageInfo.version,
      buildNumber: packageInfo.buildNumber,
      device: device,
      sdkVersion: 'Flutter 1.12.13+hotfix5',
    );
  }
}

class Device {
  Device({
    this.os,
    this.version,
    this.name,
    this.osType,
    this.id,
  });

  final String os;
  final String version;
  final String name;
  final String osType;
  final String id;
}
