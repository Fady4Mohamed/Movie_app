import 'package:flutter/material.dart';
import 'package:moviesapp/core/utils/movie.dart';
import 'package:moviesapp/core/utils/style.dart';

class MovieDescrbtion extends StatelessWidget {
  const MovieDescrbtion({super.key, required this.movie});
final MovieModel movie;
  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
          Row(
            children: [
              Text(movie.director!,style: Styles.textStyle20,),
            ],
          ),
          SizedBox(height:  MediaQuery.of(context).size.height*.01,),
          SizedBox(
            height:  MediaQuery.of(context).size.height*.08 ,
            child: Text(movie.summary!,
            style: Styles.textStyle14,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            ),
          )

      ],
    );
  }
}