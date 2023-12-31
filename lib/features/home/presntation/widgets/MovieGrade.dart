import 'package:flutter/material.dart';
import 'package:moviesapp/core/utils/movie.dart';
import 'package:moviesapp/features/home/presntation/widgets/MoviGradeItem.dart';

class MovieGrade extends StatelessWidget {
  const MovieGrade({super.key, required this.movies});
  final List<MovieModel> movies;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
        itemCount: movies.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 16, crossAxisCount: 2, crossAxisSpacing: 16),
        itemBuilder: (context, index) {
          return MovieGradeItem(
            movie: movies[index],
          );
        },
      ),
    );
  }
}
