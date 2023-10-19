import 'package:flutter/material.dart';
import 'package:moviesapp/features/Movie/presntation/widgets/MoveiDescrbtion.dart';
import 'package:moviesapp/features/Movie/presntation/widgets/MovieTitelRow.dart';
import 'package:moviesapp/features/Movie/presntation/widgets/RelatedMovies.dart';
import 'package:moviesapp/features/Movie/presntation/widgets/Releasedate.dart';
import 'package:moviesapp/features/Movie/presntation/widgets/line.dart';

class MovieData extends StatelessWidget {
  const MovieData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MovieTitelRow(),
        SizedBox(height:  MediaQuery.of(context).size.height*.01,),
        Line(),
        SizedBox(height:  MediaQuery.of(context).size.height*.01,),
        Releasedate(),
         SizedBox(height:  MediaQuery.of(context).size.height*.01,),
        Line(),
         SizedBox(height:  MediaQuery.of(context).size.height*.01,),
        MovieDescrbtion(),
          SizedBox(height:  MediaQuery.of(context).size.height*.02,),
        RelatedMovies(),
      ],
    );
  }
}
