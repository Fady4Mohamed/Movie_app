import 'package:flutter/material.dart';
import 'package:moviesapp/core/utils/movie.dart';
import 'package:moviesapp/features/Movie/presntation/widgets/MovieData.dart';
import 'package:moviesapp/features/Movie/presntation/widgets/MovieImage.dart';

class MovieView extends StatelessWidget {
  const MovieView({super.key, required this.movie});
final MovieModel movie;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          MovieImage(movie: movie),
          SizedBox(height:  MediaQuery.of(context).size.height*.02),
          MovieData(movie: movie),
        ],
      ),
    );
  }
}
