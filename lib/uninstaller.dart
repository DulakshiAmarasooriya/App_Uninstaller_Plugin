
import 'uninstaller_platform_interface.dart';

class Uninstaller {
  Future<String?> getPlatformVersion() {
    return UninstallerPlatform.instance.getPlatformVersion();
  }
}
