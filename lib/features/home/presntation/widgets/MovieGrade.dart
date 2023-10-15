import 'package:flutter/material.dart';
import 'package:moviesapp/features/home/presntation/widgets/MoviGradeItem.dart';

class MovieGrade extends StatelessWidget {
  const MovieGrade({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .67,
      child: GridView.builder(
        padding: EdgeInsets.only(left: 10,right: 10,top: 20),
        
        itemCount: 40,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 16,
            crossAxisCount: 2, crossAxisSpacing: 16),
        itemBuilder: (context, index) {
          return MovieGradeItem();
        },
      ),
    );
  }
}
