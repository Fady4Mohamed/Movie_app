
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:moviesapp/core/utils/apiserves.dart';
import 'package:moviesapp/features/home/data/rebo/homerebo.dart';

final getit=GetIt.asNewInstance();
void get(){
getit.registerSingleton<homerebo>(homerebo(Apiserves(Dio(),),),);
}