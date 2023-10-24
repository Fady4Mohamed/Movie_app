import 'package:flutter/material.dart';
import 'package:moviesapp/features/home/presntation/manger/searchAlgorithm.dart';
import 'package:moviesapp/features/home/presntation/widgets/MoviesSearched.dart';
import 'package:moviesapp/features/home/presntation/widgets/SearchNavigationBar.dart';
import 'package:moviesapp/features/home/presntation/widgets/SearchTitel.dart';
import 'package:moviesapp/features/home/presntation/widgets/Searchbar.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  String movieName='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SearchTitel(),
          CustomeSearchBar(onChanged: (p0) {
            movieName=p0;
            setState(() {
              
            });
          },),
          MoviesSearch(movies: Search.searchAlgorethem(movieName, context)),
         MediaQuery.of(context).viewInsets.bottom!=0? SizedBox():SearchNavigationBar()
        ],
      ),
    );
  }
}
