import 'dart:async';

import 'package:flutter/material.dart';

class Debounce {
  final int ms;

  Debounce({this.ms = 500});

  Timer? _timer;

  void run(VoidCallback action) {
    if (_timer != null) _timer!.cancel();
    _timer = Timer(Duration(milliseconds: ms), action);
  }

  void dispose() {
    _timer?.cancel();
  }
}
