import 'package:dartz/dartz.dart';

import '../../../../core/util/failuer.dart';
import '../model/movies.dart';

abstract class Homerepo{
  Future<Either<Failuer,List<Movies>>> featchMovies({required String url});
}
