
import 'package:flutter/material.dart';
import 'package:moviesapp/core/utils/style.dart';
import 'package:moviesapp/features/home/presntation/widgets/Trindinglist.dart';

class Trinding extends StatelessWidget {
  const Trinding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Trindtext(),
        SizedBox(height: 20,),
        TrindingList(),
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
    return Row(
      children: [
        SizedBox(width: 24,),
        Text('Trinding',style: Styles.textStyle28,textAlign: TextAlign.left,),
      ],
    );
  }
}
