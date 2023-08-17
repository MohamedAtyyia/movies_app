import 'package:app_movies/core/util/failuer.dart';
import 'package:app_movies/movies/data/model/movies.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/util/api_service.dart';
import 'home_repo.dart';

class Homerepoimple implements Homerepo {
  final ApiService _apiService;

  Homerepoimple(this._apiService);

  @override
  Future<Either<Failuer, List<Movies>>> featchMovies(
      {required String url}) async {
    try {
      return await _retutnMovies(url);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServiceFailure.dioException(e));
      }
         return left(ServiceFailure(e.toString()));
   //   throw ('Unexpected error occurred');
    }
  }

  Future<Either<Failuer, List<Movies>>> _retutnMovies(String url) async {
      Map<String, dynamic> data = await _apiService.get(url: url);
    List<Movies> movies = data['results']
        .map<Movies>((movieData) => Movies.fromJson(movieData))
        .toList();
    return right(movies);
  }
}
