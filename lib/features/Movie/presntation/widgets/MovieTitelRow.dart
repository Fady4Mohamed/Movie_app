
import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:moviesapp/core/utils/movie.dart';
import 'package:moviesapp/core/utils/style.dart';

class MovieTitelRow extends StatelessWidget {
  const MovieTitelRow({
    super.key, required this.movie,
  });
final MovieModel movie;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        
        Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width*.8 ,
              child: Text(movie.title!,
            maxLines: 1,
            overflow:TextOverflow.ellipsis ,
            style: Styles.textStyle28,),),
            SizedBox(width: 18,),
            Image.asset('assets/images/4k.png'),
          ],
        ),
        Row(
          children: [
            Icon(
              FontAwesomeIcons.clock,
            color: Color.fromARGB(255, 125, 124, 124),
            size: 20,
            ),
            Text('  ${movie.duration!}',style: Styles.textStyle16,),
            SizedBox(width: 20,),
             Icon(
              FontAwesomeIcons.solidStar,
            color: Color.fromARGB(255, 125, 124, 124),
            size: 20,
            ),
            Text('  ${movie.rating}',style: Styles.textStyle16,),

        ],),
      ],
    );
  }
}