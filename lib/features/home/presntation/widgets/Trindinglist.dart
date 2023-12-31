
import 'package:flutter/material.dart';
import 'package:moviesapp/core/utils/movie.dart';
import 'package:moviesapp/features/home/presntation/widgets/TrindingItem.dart';

class TrindingList extends StatelessWidget {
  const TrindingList({
    super.key, this.contained, this.movies,
  });
    final List<MovieModel>? movies;
final Widget? contained;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding:const EdgeInsets.all(0),
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
        return  Padding(
          padding: const EdgeInsets.only(left: 16),
          child: TrindingItem(contained: contained,movies: movies==null? null: movies![index]),
        ) ;
      },),
    );
  }
}