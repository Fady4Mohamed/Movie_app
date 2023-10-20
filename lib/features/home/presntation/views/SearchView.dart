import 'package:flutter/material.dart';
import 'package:moviesapp/features/home/presntation/widgets/MoviesSearched.dart';
import 'package:moviesapp/features/home/presntation/widgets/SearchNavigationBar.dart';
import 'package:moviesapp/features/home/presntation/widgets/SearchTitel.dart';
import 'package:moviesapp/features/home/presntation/widgets/Searchbar.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding:const EdgeInsets.all(0),
        children: const[
          SearchTitel(),
          CustomeSearchBar(),
          MoviesSearch(),
          SearchNavigationBar()
        ],
      ),
    );
  }
}
