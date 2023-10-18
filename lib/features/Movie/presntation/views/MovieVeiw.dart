import 'package:flutter/material.dart';
import 'package:moviesapp/features/Movie/presntation/widgets/MovieData.dart';
import 'package:moviesapp/features/Movie/presntation/widgets/MovieImage.dart';

class MovieView extends StatelessWidget {
  const MovieView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          MovieImage(),
          SizedBox(height:  MediaQuery.of(context).size.height*.04),
          MovieData(),
        ],
      ),
    );
  }
}
