import 'package:flutter/material.dart';
import 'package:fyp/feature/Program/programs.dart';
import 'package:fyp/feature/hireCoach/hirecoach.dart';

import 'package:fyp/feature/welcome/views/welcomepage.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: true, home: WelcomePage());
  }
}
