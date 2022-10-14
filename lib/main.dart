import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:test_app/modules/counter/counter_screen.dart';
import 'package:test_app/shared/bloc_observer.dart';

import 'modules/messanger/messanger_screen.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MessangerScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
