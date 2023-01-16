// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale ) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> en = {
  "app_bar": "Hello world",
  "center_text": "I am center text"
};
static const Map<String,dynamic> hi = {
  "app_bar": "नमस्ते दुनिया",
  "center_text": "मैं केंद्र पाठ हूँ"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en": en, "hi": hi};
}
