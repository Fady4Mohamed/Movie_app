import 'package:dio/dio.dart';
class Apiserves
{
  final String basURL='https://salardev.com/devs/moviesProject/movies.json';
  final Dio dio;
  Apiserves(this.dio);
  Future<Map<String,dynamic>>get() async {
  var response = await Dio().get(basURL);
 return response.data;
  }
  
  }