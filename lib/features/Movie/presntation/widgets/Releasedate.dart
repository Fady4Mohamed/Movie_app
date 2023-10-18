import 'package:flutter/material.dart';
import 'package:moviesapp/core/utils/style.dart';
import 'package:moviesapp/features/Movie/presntation/widgets/kindecontainer.dart';

class Releasedate extends StatelessWidget {
  const Releasedate({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text('Release date',style: Styles.textStyle20,),
            SizedBox(width: MediaQuery.of(context).size.width*.15,),
            Text('Genre',style: Styles.textStyle20,),
          ],
        ),
        SizedBox(height: MediaQuery.of(context).size.height*.02 ,),
        Row(
          children: [
            Text('December 9, 2017',style: Styles.textStyle16,),
            SizedBox(width: MediaQuery.of(context).size.width*.15,),
          Kindecontainer(text: 'Action'),
          SizedBox(width: 16,),
          Kindecontainer(text: 'Sci-Fi'),
          ],
        )
      ],
    );
  }
}