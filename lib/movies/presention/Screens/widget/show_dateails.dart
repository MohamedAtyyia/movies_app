import 'package:app_movies/movies/data/model/movies.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/util/app_constant.dart';


class ShowMoviesDetails extends StatelessWidget {
  const ShowMoviesDetails({super.key, required this.movies});
  final Movies movies;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.network(
          '${AppConstant.basurlimage}${movies.backdropPath}',
          height: MediaQuery.of(context).size.height * .3,
          width: MediaQuery.of(context).size.width * 1,
          fit: BoxFit.cover,
        ),
        //   const SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 22),
          child: Text(
            movies.title.toString(),
            style: GoogleFonts.openSans(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              letterSpacing: 0.15,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                    color: const Color(0xff424242),
                    borderRadius: BorderRadius.circular(6)),
                child: Text(
                  movies.releaseDate.toString().substring(0, 4),
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              const Icon(
                Icons.star,
                size: 24,
                color: Colors.yellow,
              ),
              const SizedBox(width: 15),
              Text(
                movies.voteAverage.toString(),
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 22),
          child: Text(movies.overview.toString(),
              maxLines: 3,
              style: const TextStyle(
                  letterSpacing: 1, fontSize: 18, fontWeight: FontWeight.w800)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Text(
            'MORE LIKE THIS',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
      ],
    );
  }
}
