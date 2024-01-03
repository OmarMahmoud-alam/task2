import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task2/view/home/home%20copy.dart';
import 'package:task2/view/register_and_login/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      defaultTransition: Transition.noTransition,
      home: const HomeView22(),
    );
  }
}
