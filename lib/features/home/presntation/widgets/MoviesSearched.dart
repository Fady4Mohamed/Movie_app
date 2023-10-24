import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:moviesapp/core/utils/movie.dart';
import 'package:moviesapp/core/utils/style.dart';
import 'package:moviesapp/features/home/presntation/manger/cubit/featerCubit/featur_Movie_cubit.dart';
import 'package:moviesapp/features/home/presntation/widgets/MovieGrade.dart';

class MoviesSearch extends StatelessWidget {
  const MoviesSearch({super.key, required this.movies});
final List<MovieModel> movies;


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturMovieCubit, FeaturMovieState>(
      builder: (context, state) {
        if (state is FeaturMoviesuccsed) {
          return MovieGrade(
              movies: movies);
        }
        if (state is FeaturMovieloding) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .63,
            width: MediaQuery.of(context).size.width,
            child: LoadingAnimationWidget.flickr(
                leftDotColor: Colors.cyan,
                rightDotColor: Colors.amber,
                size: 200),
          );
        }
        if (state is FeaturMoviefailure) {
          return Expanded(
            child: Center(
                child: Text(
              state.errorMassage,
              style: Styles.textStyle28,
            )),
          );
        } else {
          return const Expanded(
            child:  Center(
                child: Text(
              'there was an error',
              style: Styles.textStyle28,
            )),
          );
        }
      },
    );
  }
}
