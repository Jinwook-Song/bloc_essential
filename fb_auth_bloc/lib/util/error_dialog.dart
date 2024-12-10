import 'package:fb_auth_bloc/model/model.dart';
import 'package:flutter/material.dart';

void errorDialog(BuildContext context, CustomError error) {
  showAdaptiveDialog(
    context: context,
    builder: (context) {
      return AlertDialog.adaptive(
        title: Text(error.code),
        content: Text('${error.plugin}\n\n${error.message}'),
        actions: [
          TextButton(
            style: ButtonStyle(
              overlayColor: WidgetStateProperty.all(Colors.transparent),
            ),
            child: const Text('Ok'),
            onPressed: Navigator.of(context).pop,
          ),
        ],
      );
    },
  );
}
