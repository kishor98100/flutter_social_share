
import 'dart:async';

import 'package:flutter/services.dart';

class FlutterSocialShare {
  static const MethodChannel _channel =
      const MethodChannel('flutter_social_share');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
