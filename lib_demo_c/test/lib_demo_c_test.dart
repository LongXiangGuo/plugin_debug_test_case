import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lib_demo_c/lib_demo_c.dart';

void main() {
  const MethodChannel channel = MethodChannel('lib_demo_c');

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
    expect(await LibDemo_c.platformVersion, '42');
  });
}
