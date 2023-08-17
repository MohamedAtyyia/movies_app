import 'package:app_movies/movies/data/model/movies.dart';
import 'package:flutter/material.dart';

import 'item_movies_noew_playing.dart';

class FeatchrNowPlaying extends StatelessWidget {
  const FeatchrNowPlaying({
    super.key,
    required this.movies,
    required this.controller,
  });
  final List<Movies> movies;

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .4,
      child: ListView(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .4,
            child: PageView.builder(
                controller: controller,
                itemCount: movies.length,
                itemBuilder: (context, index) => ItemMoviesNowPlaying(
                      movies: movies[index],
                    )),
          )
        ],
      ),
    );
  }
}
