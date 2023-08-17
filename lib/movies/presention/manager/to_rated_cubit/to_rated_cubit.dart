import 'package:app_movies/core/util/app_constant.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/model/movies.dart';
import '../../../data/repo/home_repo_imple.dart';

part 'to_rated_state.dart';

class TopRatedMoviesCubit extends Cubit<ToRatedState> {
  TopRatedMoviesCubit(this._homerepoimple) : super(ToRatedInitial());
  final Homerepoimple _homerepoimple;

  Future<void> featchFeatcherToRatedMovies() async {
    emit(MoviesTopRatedLoading());

    var results = await _homerepoimple.featchMovies(url: AppConstant.urlTopRated);
    results.fold(
      (l) => emit(MoviesTopRatedFailuer(l.erroMessage)),
      (r) => emit(
        MoviesTopRatedSuccfuly(r),
      ),
    );
  }

}
