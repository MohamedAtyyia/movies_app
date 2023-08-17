import 'package:flutter/material.dart';

import '../../../../core/util/app_constant.dart';
import '../../../data/model/movies.dart';

class ItemMoviesNowPlaying extends StatelessWidget {
  const ItemMoviesNowPlaying({super.key, required this.movies});
  final Movies movies;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Stack(
        children: [
          ShaderMask(
            shaderCallback: (rect) {
              return const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  // fromLTRB
                  Colors.transparent,
                  Colors.black,
                  Colors.black,
                  Colors.transparent,
                ],
                stops: [0, 0.3, 0.5, 1],
              ).createShader(
                Rect.fromLTRB(0, 0, rect.width, rect.height),
              );
            },
            blendMode: BlendMode.dstIn,
            child: Image.network(
              '${AppConstant.basurlimage}${movies.backdropPath}',
              fit: BoxFit.fill,
              height: MediaQuery.of(context).size.height * .4,
              width: MediaQuery.of(context).size.width * 1,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .3,
                    ),
                    const Icon(
                      Icons.circle,
                      color: Colors.redAccent,
                      size: 16.0,
                    ),
                    const SizedBox(width: 4.0),
                    Text(
                      'Now Playing'.toUpperCase(),
                      style: const TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: SizedBox(
                      width: 150,
                      child: Text(
                        movies.originalTitle.toString(),
                        maxLines: 1,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            const SizedBox(height: 6,)
            ],

          ),
        
        ],
      ),
    );
  }
}
