import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:moviesapp/core/utils/style.dart';
import 'package:moviesapp/features/home/presntation/manger/cubit/featerCubit/featur_Movie_cubit.dart';
import 'package:moviesapp/features/home/presntation/widgets/MovieGrade.dart';

class MoviesSearch extends StatefulWidget {
  const MoviesSearch({super.key});

  @override
  State<MoviesSearch> createState() => _MoviesSearchState();
}

class _MoviesSearchState extends State<MoviesSearch> {
  @override
  void initState() {
    BlocProvider.of<FeaturMovieCubit>(context).getfeaturMovie();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturMovieCubit, FeaturMovieState>(
      builder: (context, state) {
        if (state is FeaturMoviesuccsed) {
          return MovieGrade(movies:BlocProvider.of<FeaturMovieCubit>(context).Movielist);
        }
        if (state is FeaturMovieloding) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .67,
            width: MediaQuery.of(context).size.width,
            child: LoadingAnimationWidget.flickr(
                leftDotColor: Colors.cyan,
                rightDotColor: Colors.amber,
                size: 200),
          );
        }
        if (state is FeaturMoviefailure) {
          return SizedBox(
             height: MediaQuery.of(context).size.height * .67,
            child: Center(
                child: Text(
              state.errorMassage,
              style: Styles.textStyle28,
            )),
          );
        } else {
          return SizedBox(
             height: MediaQuery.of(context).size.height * .67,
            child: Center(
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
