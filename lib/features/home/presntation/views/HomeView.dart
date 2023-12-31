import 'package:flutter/material.dart';
import 'package:moviesapp/features/home/presntation/widgets/HomeAppBar.dart';
import 'package:moviesapp/features/home/presntation/widgets/HomeNavigationBar.dart';
import 'package:moviesapp/features/home/presntation/widgets/HomeViewBoody.dart';

class HomeVeiw extends StatelessWidget {
  const HomeVeiw({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          HomeAppBar(),
          
          Expanded(child: HomeViewBoody()),
          HomeNavigationBar(),
          ],
      ),
    );
  }
}
