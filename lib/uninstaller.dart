
import 'uninstaller_platform_interface.dart';

class Uninstaller {
  Future<String?> UninstallApp() {
    return UninstallerPlatform.instance.UninstallApp();
  }
}
