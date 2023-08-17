import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../data/model/movies.dart';
import '../../../../data/repo/home_repo_imple.dart';

part 'similer_movies_state.dart';

class SimilerMoviesCubit extends Cubit<SimilerMoviesState> {
  SimilerMoviesCubit(this._homerepoimple) : super(SimilerMoviesInitial());
    final Homerepoimple _homerepoimple;

  Future<void> featchFeatcherSimilerMovies({required String url }) async {
    emit(SimilerMoviesLoading());

    var results = await _homerepoimple.featchMovies(url: url);
    results.fold(
      (l) => emit(SimilerMoviesFailuer(l.erroMessage)),
      (r) => emit(
        SimilerMoviesSuccfuly(r),
      ),
    );
  }

}
