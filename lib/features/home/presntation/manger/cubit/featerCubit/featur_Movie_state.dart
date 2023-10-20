part of 'featur_Movie_cubit.dart';

sealed class FeaturMovieState extends Equatable {
  const FeaturMovieState();

  @override
  List<Object> get props => [];
}

final class FeaturMovieInitial extends FeaturMovieState {}
final class FeaturMovieloding extends FeaturMovieState {}
final class FeaturMoviefailure extends FeaturMovieState {
  final String errorMassage;

const  FeaturMoviefailure(this.errorMassage);

}
final class FeaturMoviesuccsed extends FeaturMovieState {
}

