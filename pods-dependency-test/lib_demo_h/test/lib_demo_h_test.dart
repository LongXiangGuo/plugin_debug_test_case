import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lib_demo_h/lib_demo_h.dart';

void main() {
  const MethodChannel channel = MethodChannel('lib_demo_h');

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
    expect(await LibDemo_h.platformVersion, '42');
  });
}
