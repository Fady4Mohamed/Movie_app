
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:moviesapp/core/utils/app_routers.dart';
import 'package:moviesapp/core/utils/movie.dart';

class ReladtedMovieItem extends StatelessWidget {
  const ReladtedMovieItem({
    super.key, required this.movie,
  });
final MovieModel movie;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
    GoRouter.of(context).push(AppRouter.kMovieView);
      },
      child: SizedBox(
      height:MediaQuery.of(context).size.height*.16,
      child: AspectRatio(
        aspectRatio:142/106,
        child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
     image: NetworkImage(movie.cover!),
     fit: BoxFit.fill,
        )
      ),
        ),
      ),
        ),
    );
  }
}