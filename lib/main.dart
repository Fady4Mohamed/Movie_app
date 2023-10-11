import 'package:flutter/material.dart';
import 'package:moviesapp/features/home/presntation/views/HomeView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: Color(0xff15141F)),
      debugShowCheckedModeBanner: false,
      home: const HomeVeiw(),
    );
  }
}
