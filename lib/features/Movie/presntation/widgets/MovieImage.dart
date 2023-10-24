import 'package:flutter/material.dart';
import 'package:moviesapp/core/utils/movie.dart';
import 'package:url_launcher/url_launcher.dart';

class MovieImage extends StatelessWidget {
  const MovieImage({
    super.key,
    required this.movie,
  });
  final MovieModel movie;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .36,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Image.network(
            movie.cover!,
            height: MediaQuery.of(context).size.height * .36,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.fill,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
              child: Image.asset('assets/images/Path.png'),
            ),
          ),
          Center(
            child: CircleAvatar(
              backgroundColor:
                  const Color.fromARGB(255, 251, 249, 249).withOpacity(.4),
              radius: 30,
            ),
          ),
          Center(
            child: GestureDetector(
              onTap: () async {
                if (!await launchUrl(Uri.parse(movie.video!))) {
                  throw Exception('Could not launch ');
                }
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 10, top: 7),
                child: Image.asset('assets/images/playbutton.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
