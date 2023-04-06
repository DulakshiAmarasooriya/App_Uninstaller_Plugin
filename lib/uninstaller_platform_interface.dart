import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'uninstaller_method_channel.dart';

abstract class UninstallerPlatform extends PlatformInterface {
  /// Constructs a UninstallerPlatform.
  UninstallerPlatform() : super(token: _token);

  static final Object _token = Object();

  static UninstallerPlatform _instance = MethodChannelUninstaller();

  /// The default instance of [UninstallerPlatform] to use.
  ///
  /// Defaults to [MethodChannelUninstaller].
  static UninstallerPlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [UninstallerPlatform] when
  /// they register themselves.
  static set instance(UninstallerPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> UninstallApp() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
