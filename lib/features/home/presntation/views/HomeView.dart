import 'package:flutter/material.dart';
import 'package:moviesapp/features/home/presntation/widgets/HomeAppBar.dart';
import 'package:moviesapp/features/home/presntation/widgets/HomeNavigationBar.dart';
import 'package:moviesapp/features/home/presntation/widgets/HomeViewBoody.dart';

class HomeVeiw
 extends StatelessWidget {
  const HomeVeiw
  ({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Column(
        children: [
          HomeAppBar(),
          HomeViewBoody(),
          HomeNavigationBar()

        ],
      ),
    );
  }
}
