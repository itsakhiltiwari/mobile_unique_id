import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'mobile_unique_id_platform_interface.dart';

/// An implementation of [MobileUniqueIdPlatform] that uses method channels.
class MethodChannelMobileUniqueId extends MobileUniqueIdPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('mobile_unique_id');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
