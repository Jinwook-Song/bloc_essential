import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void errorDialog(BuildContext context, String message) {
  switch (defaultTargetPlatform) {
    case TargetPlatform.android:
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return AlertDialog(
            title: Text('Error'),
            content: Text(message),
            actions: [
              TextButton(
                child: Text('Ok'),
                onPressed: Navigator.of(context).pop,
              )
            ],
          );
        },
      );
    case TargetPlatform.iOS:
      showCupertinoDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return CupertinoAlertDialog(
            title: Text('Error'),
            content: Text(message),
            actions: [
              CupertinoDialogAction(
                child: Text('Ok'),
                onPressed: Navigator.of(context).pop,
              )
            ],
          );
        },
      );
    default:
      break;
  }
}
