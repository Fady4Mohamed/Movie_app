import 'package:flutter/material.dart';
import 'package:moviesapp/core/utils/movie.dart';
import 'package:moviesapp/core/utils/style.dart';
import 'package:moviesapp/features/Movie/presntation/widgets/kindecontainer.dart';

class Releasedate extends StatelessWidget {
  const Releasedate({super.key, required this.movie});
  final MovieModel movie;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text(
              'Release date',
              style: Styles.textStyle20,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .15,
            ),
            const Text(
              'Genre',
              style: Styles.textStyle20,
            ),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .02,
        ),
        Row(
          children: [
            Text(
              movie.year.toString(),
              style: Styles.textStyle16,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .15,
            ),
            const Kindecontainer(text: 'Action'),
            const SizedBox(
              width: 16,
            ),
            const Kindecontainer(text: 'Sci-Fi'),
          ],
        )
      ],
    );
  }
}
