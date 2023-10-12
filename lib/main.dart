import 'package:flutter/material.dart';
import 'package:moviesapp/core/utils/app_routers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig:AppRouter.router ,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: Color(0xff15141F)),
      debugShowCheckedModeBanner: false,
     
    );
  }
}
