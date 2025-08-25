import 'package:flutter_web_plugins/flutter_web_plugins.dart';

/// Registers the web implementation of the dart_icu4x plugin.
/// This is called automatically by Flutter when running on web.
class DartIcu4xWeb {
  static void registerWith(Registrar registrar) {
    // No-op: The main dart_icu4x API is already compatible with web via WASM/JS interop.
    // If you need to override or provide web-specific logic, do it here.
  }
}
