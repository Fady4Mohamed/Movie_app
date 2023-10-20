import 'package:flutter/material.dart';
import 'package:moviesapp/core/utils/movie.dart';
import 'package:moviesapp/core/utils/style.dart';
import 'package:moviesapp/features/home/presntation/widgets/Trindinglist.dart';

class Trinding extends StatelessWidget {
  const Trinding({
    super.key,
    this.contained,
    this.movies,
  });
  final List<MovieModel>? movies;
  final Widget? contained;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Trindtext(),
        const SizedBox(
          height: 20,
        ),
        TrindingList(
          contained: contained,
          movies: movies,
        ),
      ],
    );
  }
}

class Trindtext extends StatelessWidget {
  const Trindtext({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        SizedBox(
          width: 24,
        ),
        Text(
          'Trinding',
          style: Styles.textStyle28,
          textAlign: TextAlign.left,
        ),
      ],
    );
  }
}
