
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:moviesapp/core/utils/app_routers.dart';

class TrindingItem extends StatelessWidget {
  const TrindingItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
         GoRouter.of(context).push(AppRouter.kMovieView);
      },
      child: SizedBox(
      height:MediaQuery.of(context).size.height*.39 ,
      child: AspectRatio(
        aspectRatio:258/336,
        child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          image: AssetImage('assets/images/movie 1.jpg'),
          fit: BoxFit.fill,
        )
      ),
        ),
      ),
        ),
    );
  }
}