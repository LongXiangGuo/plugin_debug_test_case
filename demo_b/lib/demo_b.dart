import 'dart:async';

import 'package:flutter/services.dart';

class Demo_b {
  static const MethodChannel _channel =
      const MethodChannel('demo_b');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
