import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:moviesapp/core/utils/style.dart';
import 'package:moviesapp/features/home/presntation/manger/cubit/TrindingMovie/TrindingMovies_cubit.dart';
import 'package:moviesapp/features/home/presntation/manger/cubit/featerCubit/featur_Movie_cubit.dart';
import 'package:moviesapp/features/home/presntation/widgets/ContinuWatching.dart';
import 'package:moviesapp/features/home/presntation/widgets/Trinding.dart';

class HomeViewBoody extends StatefulWidget {
  const HomeViewBoody({
    super.key,
  });

  @override
  State<HomeViewBoody> createState() => _HomeViewBoodyState();
}

class _HomeViewBoodyState extends State<HomeViewBoody> {
  @override
  void initState() {
    BlocProvider.of<trindingmoviesCubit>(context).getTrindingMovies();
    BlocProvider.of<FeaturMovieCubit>(context).getfeaturMovie();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<trindingmoviesCubit, TrindingMoviesState>(
      builder: (context, state) {
        if (state is TrindingMoviesloding) {
          return Column(
            children: [
              ContinueWatching(
                  contained: LoadingAnimationWidget.flickr(
                      leftDotColor: Colors.cyan,
                      rightDotColor: Colors.amber,
                      size: 200)),
              Trinding(
                contained: LoadingAnimationWidget.flickr(
                    leftDotColor: Colors.cyan,
                    rightDotColor: Colors.amber,
                    size: 60),
              ),
            ],
          );
        }

        if (state is TrindingMoviessuccsed) {
          return Column(children: [
            ContinueWatching(
              contained: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                      image: NetworkImage(state.Movies[0].cover!),
                      fit: BoxFit.fill,
                    )),
              ),
            ),
            Trinding(movies: state.Movies),
          ]);
        }
        if (state is TrindingMoviesfailer) {
          return Center(
              child: Text(
            state.errorMassage,
            style: Styles.textStyle28,
          ));
        } else {
          return const Center(
              child: Text(
            'there was an error',
            style: Styles.textStyle28,
          ));
        }
      },
    );
  }
}
