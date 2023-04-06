import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:uninstaller/uninstaller_method_channel.dart';

void main() {
  MethodChannelUninstaller platform = MethodChannelUninstaller();
  const MethodChannel channel = MethodChannel('uninstaller');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
