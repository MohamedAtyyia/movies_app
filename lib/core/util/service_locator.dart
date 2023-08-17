
import 'package:app_movies/core/util/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../movies/data/repo/home_repo_imple.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton <ApiService>(ApiService(Dio()));

  GetIt.I.registerSingleton<Homerepoimple>(Homerepoimple(getIt.get<ApiService>()));
}
