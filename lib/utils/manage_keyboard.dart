import 'package:flutter/material.dart';

class keyboardUtil {
  static void hideKeyboard(BuildContext context) {
    FocusScopeNode currentfocus = FocusScope.of(context);

    if (!currentfocus.hasPrimaryFocus) {
      currentfocus.unfocus();
    }
  }
}
