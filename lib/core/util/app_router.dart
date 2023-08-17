import 'package:app_movies/movies/data/model/movies.dart';
import 'package:app_movies/movies/presention/Screens/details_screen.dart';
import 'package:app_movies/movies/presention/Screens/movies_screen.dart';
import 'package:flutter/material.dart';

class AppRouter{
  static const String detailsScreen = '/detailsScreen';
  Route? generatraout(RouteSettings settings){
    switch(settings.name){
      case '/':
      return MaterialPageRoute(builder: (_)=>const MoviesScreen());
        case detailsScreen:
        final arg= settings.arguments as Movies;
      return MaterialPageRoute(builder: (_)=> DetailsScreen(movies: arg,));
    }
  }
}