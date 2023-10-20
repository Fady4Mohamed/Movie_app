
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:moviesapp/core/utils/app_routers.dart';
import 'package:moviesapp/core/utils/movie.dart';

class TrindingItem extends StatelessWidget {
  const TrindingItem({
    super.key, this.contained, this.movies,
  });
 final Widget? contained;
 final MovieModel? movies;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
         GoRouter.of(context).push(AppRouter.kMovieView,extra: movies );
      },
      child: SizedBox(
      height:MediaQuery.of(context).size.height*.39 ,
      child: AspectRatio(
        aspectRatio:258/336,
        child: contained?? Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
        image: NetworkImage(movies!.cover!),
          fit: BoxFit.fill,
        )
      ),
        ),
      ),
        ),
    );
  }
}