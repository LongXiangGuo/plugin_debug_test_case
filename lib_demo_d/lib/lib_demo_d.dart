import 'dart:async';

import 'package:flutter/services.dart';

class LibDemo_d {
  static const MethodChannel _channel =
      const MethodChannel('lib_demo_d');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
