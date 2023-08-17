import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../movie_bookmarks/presentation/bloc/movie_bookmark_bloc.dart';
import '../../../domain/entities/movie_details.dart';
import '../../bloc/movie_details_bloc.dart';

class MovieDetailsWidget extends StatelessWidget {
  final MovieDetails movieDetailsModel;
  final state;

  const MovieDetailsWidget(
      {required this.movieDetailsModel, required this.state, super.key});

  final imageBaseUrl = 'https://image.tmdb.org/t/p/w500/';

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * .3,
          child: Image.network(
              fit: BoxFit.fitWidth,
              width: double.infinity,
              imageBaseUrl + movieDetailsModel.backdropPath!),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: MediaQuery.of(context).size.height * .6,
            width: double.infinity,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                color: Colors.white),
            child: Container(
              margin: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        movieDetailsModel.originalTitle!,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      GestureDetector(
                          onTap: () {},
                          child: state.isBookmark == true
                              ? GestureDetector(
                                  onTap: () {
                                    context.read<MovieDetailsBloc>().add(
                                          MovieDetailsEvent.isMovieBookmark(
                                              movieId: state.movieDetails!.id),
                                        );
                                  },
                                  child: GestureDetector(
                                      onTap: () {
                                        context.read<MovieBookmarkBloc>().add(
                                            MovieBookmarkEvent
                                                .deleteBookmarkEvent(
                                                    movieId: state
                                                        .movieDetails!.id));
                                        context.read<MovieDetailsBloc>().add(
                                            MovieDetailsEvent.isMovieBookmark(
                                                movieId:
                                                    state.movieDetails!.id));
                                      },
                                      child: const Icon(Icons.bookmark)))
                              : GestureDetector(
                                  onTap: () {
                                    context.read<MovieBookmarkBloc>().add(
                                          MovieBookmarkEvent.addToBookmarkEvent(
                                              movieDetails: state.movieDetails),
                                        );

                                    context.read<MovieDetailsBloc>().add(
                                        MovieDetailsEvent.isMovieBookmark(
                                            movieId: state.movieDetails!.id));
                                  },
                                  child: const Icon(
                                      Icons.bookmark_border_outlined),
                                ))
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        const TextSpan(
                            text: "Ratting: ",
                            style: TextStyle(color: Colors.black)),
                        const WidgetSpan(
                          child:
                              Icon(Icons.star, color: Colors.amber, size: 14),
                        ),
                        TextSpan(
                            text:
                                "${state.movieDetails!.voteAverage!} / ${state.movieDetails!.voteCount}",
                            style: const TextStyle(color: Colors.black)),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        const TextSpan(
                            text: "Popularity: ",
                            style: TextStyle(color: Colors.black)),
                        TextSpan(
                            text: "${state.movieDetails!.popularity!}",
                            style: const TextStyle(color: Colors.black)),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    state.movieDetails!.overview!,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
