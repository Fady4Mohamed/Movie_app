part of 'TrindingMovies_cubit.dart';

sealed class TrindingMoviesState extends Equatable {
  const TrindingMoviesState();

  @override
  List<Object> get props => [];
}

final class TrindingMoviesInitial extends TrindingMoviesState {}
final class TrindingMoviessuccsed extends TrindingMoviesState {
  final List<MovieModel> Movies;

 const TrindingMoviessuccsed(this.Movies);
}
final class TrindingMoviesfailer extends TrindingMoviesState {
  final String errorMassage;

 const TrindingMoviesfailer(this.errorMassage);
}
final class TrindingMoviesloding extends TrindingMoviesState {}

