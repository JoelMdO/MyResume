import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

class FontManager {
  /// Whether Google Fonts remote fetch appears reachable and responsive.
  /// If true, we allow runtime fetching; otherwise we'll rely on local fallback.
  static bool remoteAvailable = false;

  /// Check network access to Google Fonts CSS and a referenced font resource.
  /// This does NOT attempt to register fonts via `dart:ui` to avoid
  /// unsupported platform issues. It only performs a lightweight availability
  /// check used to enable or disable `GoogleFonts.config.allowRuntimeFetching`.
  static Future<void> init() async {
    try {
      final cssUri = Uri.parse(
          'https://fonts.googleapis.com/css2?family=Montserrat:wght@400;600;700&display=swap');
      final cssResp =
          await http.get(cssUri).timeout(const Duration(seconds: 5));
      if (cssResp.statusCode == 200) {
        final css = cssResp.body;
        final match = RegExp(r"url\((https:[^)]+)\)").firstMatch(css);
        if (match != null) {
          final fontUrl = Uri.parse(match.group(1)!);
          final fontResp =
              await http.head(fontUrl).timeout(const Duration(seconds: 5));
          if (fontResp.statusCode == 200) {
            remoteAvailable = true;
            return;
          }
        }
      }
    } catch (_) {
      // ignore network errors
    }

    // If we reach here, remote fonts are not available. Ensure local asset exists
    // by reading the registered asset. This is a cheap check; failure falls
    // through and remoteAvailable stays false.
    try {
      await rootBundle.load('assets/fonts/Montserrat-Regular.ttf');
    } catch (_) {
      // asset missing — but we still keep remoteAvailable false so app falls
      // back to system fonts.
    }
    try {
      await rootBundle.load('assets/fonts/Montserrat-Italic.ttf');
    } catch (_) {
      // asset missing — but we still keep remoteAvailable false so app falls
      // back to system fonts.
    }
    // Also confirm McLaren local font exists for fallback usage.
    try {
      await rootBundle.load('assets/fonts/McLaren-Regular.ttf');
    } catch (_) {
      // missing McLaren is acceptable; code will simply not be able to
      // fallback to it and will use system fonts instead.
    }
    // Also confirm Inter local font exists for fallback usage.
    try {
      await rootBundle.load('assets/fonts/Inter-ExtraBold.ttf');
    } catch (_) {
      // missing Inter is acceptable; code will fallback to other local fonts
    }
    // Also confirm Inter local font exists for fallback usage.
    try {
      await rootBundle.load('assets/fonts/Inter-SemiBold.ttf');
    } catch (_) {
      // missing Inter is acceptable; code will fallback to other local fonts
    }
    try {
      await rootBundle.load('assets/fonts/Inter-Bold.ttf');
    } catch (_) {
      // missing Inter is acceptable; code will fallback to other local fonts
    }
    // Also confirm NotoSansKhojki local font exists for fallback usage.
    try {
      await rootBundle.load('assets/fonts/NotoSansKhojki-Regular.ttf');
    } catch (_) {
      // missing NotoSansKhojki is acceptable; code will fallback to other local fonts
    }
  }
}
