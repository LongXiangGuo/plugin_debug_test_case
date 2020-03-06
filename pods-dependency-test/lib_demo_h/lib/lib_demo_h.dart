import 'dart:async';

import 'package:flutter/services.dart';

class LibDemo_h {
  static const MethodChannel _channel =
      const MethodChannel('lib_demo_h');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
