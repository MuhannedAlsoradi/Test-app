import 'package:flutter/material.dart';

class DataChat {
  final String? userName;
  final String? imageUrl;
  final String? message;
  final String? time;
  final Widget? child;
  final Color? activeColor;

  DataChat({
    @required this.imageUrl,
    @required this.userName,
    @required this.message,
    @required this.time,
    @required this.child,
    @required this.activeColor,
  });
}
