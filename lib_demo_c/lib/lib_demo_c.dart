import 'dart:async';

import 'package:flutter/services.dart';

class LibDemo_c {
  static const MethodChannel _channel =
      const MethodChannel('lib_demo_c');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
