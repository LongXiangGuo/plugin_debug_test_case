import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:demo_b/demo_b.dart';

void main() {
  const MethodChannel channel = MethodChannel('demo_b');

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
    expect(await Demo_b.platformVersion, '42');
  });
}
