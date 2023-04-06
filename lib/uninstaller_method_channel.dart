import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'uninstaller_platform_interface.dart';

/// An implementation of [UninstallerPlatform] that uses method channels.
class MethodChannelUninstaller extends UninstallerPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('uninstaller');

  @override
  Future<String?> getPlatformVersion() async {
    final bool isUninstalled=await _channel.invokeMethod('Uninstall',{"package":package});
    return isUninstalled;
  }
}
