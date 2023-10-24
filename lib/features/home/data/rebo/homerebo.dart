import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:moviesapp/core/utils/apiserves.dart';
import 'package:moviesapp/core/utils/movie.dart';
import '../../../../core/error/failre.dart';

class homerebo{
 final Apiserves _apiserves;

  homerebo(this._apiserves);

Future<Either<ServerFailure,List<MovieModel>>> fetchTrindingMovies() async{
  try {
      var data = await _apiserves.get();
      List<MovieModel> Movies = [];
      for (var item in data['foryou']) {
        
           Movies.add(MovieModel.fromJson(item));
               
      }

      return Right(Movies);
    }  catch (e) {
      if (e is DioException) {
        return Left(
          ServerFailure.fromDioError(e),
        );
      }
      return Left(
        ServerFailure(
          e.toString(),
        ),
      );
    }


}
Future<Either<ServerFailure,List<MovieModel>>> fetchMovies() async {
  try{
    var data = await _apiserves.get();
      List<MovieModel> Movies = [];
         for (var item in data['drama']) {
        
           Movies.add(MovieModel.fromJson(item));
        }    

        for (var item in data['comedy']) {
        
           Movies.add(MovieModel.fromJson(item));
        }         
          for (var item in data['Adventure']) {
        
           Movies.add(MovieModel.fromJson(item));
        } 
      return Right(Movies);
    }  catch (e) {
      if (e is DioException) {
        return Left(
          ServerFailure.fromDioError(e),
        );
      }
      return Left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
}

}