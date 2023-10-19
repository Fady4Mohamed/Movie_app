import 'package:flutter/material.dart';
import 'package:moviesapp/features/home/presntation/widgets/MovieGrade.dart';
import 'package:moviesapp/features/home/presntation/widgets/SearchNavigationBar.dart';
import 'package:moviesapp/features/home/presntation/widgets/SearchTitel.dart';
import 'package:moviesapp/features/home/presntation/widgets/Searchbar.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(0),
        children: [
          SearchTitel(),
          CustomeSearchBar(),
          MovieGrade(),
          SearchNavigationBar()
        ],
      ),
    );
  }
}
