import 'package:flutter/material.dart';
import 'package:moviesapp/core/utils/style.dart';

class MovieDescrbtion extends StatelessWidget {
  const MovieDescrbtion({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
          Row(
            children: [
              Text('Synopsis',style: Styles.textStyle20,),
            ],
          ),
          SizedBox(height:  MediaQuery.of(context).size.height*.01,),
          SizedBox(
            height:  MediaQuery.of(context).size.height*.08 ,
            child: Text('Rey (Daisy Ridley) finally manages to find the legendary Jedi knight, Luke Skywalker (Mark Hamill) on an island with a magical aura. The heroes of The Force Awakens including Leia, Finn Read more..',
            style: Styles.textStyle14,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            ),
          )

      ],
    );
  }
}