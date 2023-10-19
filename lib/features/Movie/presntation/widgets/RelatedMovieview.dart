import 'package:flutter/material.dart';
import 'package:moviesapp/features/Movie/presntation/widgets/ReladtedMovieItem.dart';

class RelatedMovieView
 extends StatelessWidget {
  const RelatedMovieView
  ({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*.17,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
        return Padding(
          padding:  EdgeInsets.only(left: 8,top: MediaQuery.of(context).size.height*.02),
          child: ReladtedMovieItem(),
        );
      },),
    );
  }
}