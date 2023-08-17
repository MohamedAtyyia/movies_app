part of 'to_rated_cubit.dart';

abstract class ToRatedState extends Equatable {
  const ToRatedState();

  @override
  List<Object> get props => [];
}

class ToRatedInitial extends ToRatedState {}


class MoviesTopRatedFailuer extends ToRatedState {
  final String erroMessage;

const  MoviesTopRatedFailuer(this.erroMessage);

}

class MoviesTopRatedLoading extends ToRatedState {}

class MoviesTopRatedSuccfuly extends ToRatedState {
  final List<Movies> moviesTpRated;

  const MoviesTopRatedSuccfuly(this.moviesTpRated);
}
