import 'dart:io';

import 'package:flutter/foundation.dart';

class EnvironmentConfig {
  static const _productionApiUrl = "https://production.example.com";
  static const _stagingApiUrl = "https://staging.example.com";
  static final _developmentApiUrl =
      !kIsWeb && Platform.isAndroid ? 'http://10.0.2.2' : 'http://localhost';

  static String get apiUrl {
    switch (const String.fromEnvironment('flavor')) {
      case 'prod':
        return _productionApiUrl;
      case 'stg':
        return _stagingApiUrl;
      default:
        return _developmentApiUrl;
    }
  }
}
