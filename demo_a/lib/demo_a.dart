import 'dart:async';

import 'package:flutter/services.dart';

class Demo_a {
  static const MethodChannel _channel =
      const MethodChannel('demo_a');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
