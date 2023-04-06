import 'package:flutter_test/flutter_test.dart';
import 'package:uninstaller/uninstaller.dart';
import 'package:uninstaller/uninstaller_platform_interface.dart';
import 'package:uninstaller/uninstaller_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockUninstallerPlatform 
    with MockPlatformInterfaceMixin
    implements UninstallerPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final UninstallerPlatform initialPlatform = UninstallerPlatform.instance;

  test('$MethodChannelUninstaller is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelUninstaller>());
  });

  test('getPlatformVersion', () async {
    Uninstaller uninstallerPlugin = Uninstaller();
    MockUninstallerPlatform fakePlatform = MockUninstallerPlatform();
    UninstallerPlatform.instance = fakePlatform;
  
    expect(await uninstallerPlugin.getPlatformVersion(), '42');
  });
}
