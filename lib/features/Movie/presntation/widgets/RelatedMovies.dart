import 'package:flutter/material.dart';
import 'package:moviesapp/core/utils/style.dart';
import 'package:moviesapp/features/Movie/presntation/widgets/RelatedMovieview.dart';

class RelatedMovies extends StatelessWidget {
  const RelatedMovies({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text('Related Movies',style: Styles.textStyle20,),
          ],
        ),
         RelatedMovieView(),

      ],
    );
  }
}
