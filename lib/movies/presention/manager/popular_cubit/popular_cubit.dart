import 'package:app_movies/core/util/app_constant.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/model/movies.dart';
import '../../../data/repo/home_repo_imple.dart';

part 'popular_state.dart';

class PopularMoviesCubit extends Cubit<MoviesPopularState> {
  PopularMoviesCubit(this._homerepoimple) : super(PopularInitial());
    final Homerepoimple _homerepoimple;

     Future<void> featchFeatcherPopularMovies() async {
    emit(MoviesPopularLoading());

    var results = await _homerepoimple.featchMovies(url: AppConstant.urlPopular);
    results.fold(
      (l) => emit(MoviesPopularFailuer(l.erroMessage)),
      (r) => emit(
        MoviesPopularSuccfuly(r),
      ),
    );
  }

}
