import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'mobile_unique_id_method_channel.dart';

abstract class MobileUniqueIdPlatform extends PlatformInterface {
  /// Constructs a MobileUniqueIdPlatform.
  MobileUniqueIdPlatform() : super(token: _token);

  static final Object _token = Object();

  static MobileUniqueIdPlatform _instance = MethodChannelMobileUniqueId();

  /// The default instance of [MobileUniqueIdPlatform] to use.
  ///
  /// Defaults to [MethodChannelMobileUniqueId].
  static MobileUniqueIdPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [MobileUniqueIdPlatform] when
  /// they register themselves.
  static set instance(MobileUniqueIdPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
