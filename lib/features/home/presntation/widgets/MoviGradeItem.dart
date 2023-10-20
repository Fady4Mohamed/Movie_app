import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:moviesapp/core/utils/app_routers.dart';
import 'package:moviesapp/core/utils/movie.dart';

class MovieGradeItem extends StatelessWidget {
  const MovieGradeItem({
    super.key,
    required this.movie,
  });
  final MovieModel movie;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kMovieView, extra: movie);
      },
      child: SizedBox(
        height: 250,
        child: Column(
          children: [
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width * .39,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                    image: NetworkImage(movie.cover!),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            SizedBox(
              height: 16,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      width: MediaQuery.of(context).size.width * .2,
                      child: Text(
                        movie.title!,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      )),
                  Text(
                    '(${movie.year!})',
                    style: const TextStyle(
                      color: Color.fromARGB(221, 79, 78, 78),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
