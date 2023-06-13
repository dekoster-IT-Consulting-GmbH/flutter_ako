// Written by the Ako Authors:
// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/.

import 'package:flutter/material.dart';

/// AkoShowSnackBar is an extension to [BuildContext].<br>
/// [showErrorSnackBar] shows a white on read message.<br>
/// [showSnackBar] shows a white on green message.
extension AkoShowSnackBar on BuildContext {
  /// showSnackBar shows a snackbar message.<br>
  /// [backgroundColor] is green by default.<br>
  /// [foregroundColor] is white by default.
  void showSnackBar({
    required String message,
    Color backgroundColor = Colors.green,
    Color foregroundColor = Colors.white,
  }) {
    ScaffoldMessenger.of(this).showSnackBar(SnackBar(
      content: Text(message, style: TextStyle(color: foregroundColor)),
      backgroundColor: backgroundColor,
    ));
  }

  /// showSnackBar shows a snackbar message.<br>
  /// [backgroundColor] is red by default.<br>
  /// [foregroundColor] is white by default.
  void showErrorSnackBar({required String message}) {
    showSnackBar(message: message, backgroundColor: Colors.red);
  }
}
