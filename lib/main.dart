import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutteraassignment/ui/home_screen.dart';

import 'utils/modify_colors.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: ModifyColors.bgMain,
    statusBarColor: ModifyColors.bgMain,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assignment',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}