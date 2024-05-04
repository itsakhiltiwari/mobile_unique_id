
import 'mobile_unique_id_platform_interface.dart';

class MobileUniqueId {
  Future<String?> getPlatformVersion() {
    return MobileUniqueIdPlatform.instance.getPlatformVersion();
  }
}
