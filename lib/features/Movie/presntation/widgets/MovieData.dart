import 'package:flutter/material.dart';
import 'package:moviesapp/core/utils/movie.dart';
import 'package:moviesapp/features/Movie/presntation/widgets/MoveiDescrbtion.dart';
import 'package:moviesapp/features/Movie/presntation/widgets/MovieTitelRow.dart';
import 'package:moviesapp/features/Movie/presntation/widgets/RelatedMovies.dart';
import 'package:moviesapp/features/Movie/presntation/widgets/Releasedate.dart';
import 'package:moviesapp/features/Movie/presntation/widgets/line.dart';

class MovieData extends StatelessWidget {
  const MovieData({super.key, required this.movie});
final MovieModel movie;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MovieTitelRow(movie: movie),
        SizedBox(height:  MediaQuery.of(context).size.height*.01,),
        Line(),
        SizedBox(height:  MediaQuery.of(context).size.height*.01,),
        Releasedate(movie: movie),
         SizedBox(height:  MediaQuery.of(context).size.height*.01,),
        Line(),
         SizedBox(height:  MediaQuery.of(context).size.height*.01,),
        MovieDescrbtion(movie: movie),
          SizedBox(height:  MediaQuery.of(context).size.height*.02,),
        RelatedMovies(movie: movie),
      ],
    );
  }
}
