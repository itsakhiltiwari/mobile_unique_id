import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_unique_id/mobile_unique_id.dart';
import 'package:mobile_unique_id/mobile_unique_id_platform_interface.dart';
import 'package:mobile_unique_id/mobile_unique_id_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockMobileUniqueIdPlatform
    with MockPlatformInterfaceMixin
    implements MobileUniqueIdPlatform {

  @override
  Future<String?> getUniqueId() => Future.value('42');
}

void main() {
  final MobileUniqueIdPlatform initialPlatform = MobileUniqueIdPlatform.instance;

  test('$MethodChannelMobileUniqueId is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelMobileUniqueId>());
  });

  test('getUniqueId', () async {
    MobileUniqueId mobileUniqueIdPlugin = MobileUniqueId();
    MockMobileUniqueIdPlatform fakePlatform = MockMobileUniqueIdPlatform();
    MobileUniqueIdPlatform.instance = fakePlatform;

    expect(await mobileUniqueIdPlugin.getUniqueId(), '42');
  });
}
