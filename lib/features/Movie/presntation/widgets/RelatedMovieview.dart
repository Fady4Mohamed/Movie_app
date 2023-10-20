import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moviesapp/core/utils/movie.dart';
import 'package:moviesapp/features/Movie/presntation/widgets/ReladtedMovieItem.dart';
import 'package:moviesapp/features/home/presntation/manger/cubit/featerCubit/featur_Movie_cubit.dart';

class RelatedMovieView extends StatelessWidget {
  const RelatedMovieView({super.key});
  @override
  Widget build(BuildContext context) {
    List<MovieModel> movies =
        BlocProvider.of<FeaturMovieCubit>(context).Movielist;
    return SizedBox(
      height: MediaQuery.of(context).size.height * .17,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: movies.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(
                left: 8, top: MediaQuery.of(context).size.height * .02),
            child: ReladtedMovieItem(movie: movies[index]),
          );
        },
      ),
    );
  }
}
