import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test_bloc/core/database/data_base_helper.dart';
import 'package:flutter_test_bloc/feature/movie_details/presentation/bloc/movie_bookmark_bloc/movie_bookmark_bloc.dart';

import '../../../../injection.dart';
import '../bloc/movie_details_bloc/movie_details_bloc.dart';

class MovieDetailsPage extends StatelessWidget {
  MovieDetailsPage({super.key});
final DataBaseHelper dataBaseHelper = DataBaseHelper();
  final imageBaseUrl = 'https://image.tmdb.org/t/p/w500/';

  @override
  Widget build(BuildContext context) {
    dataBaseHelper.init();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Movie Details"),
      ),
      body: SafeArea(
        child: BlocBuilder<MovieDetailsBloc, MovieDetailsState>(
          builder: (context, state) {
            if (state.movieDetails != null) {
              return Stack(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .3,
                    child: Image.network(
                        fit: BoxFit.fitWidth,
                        width: double.infinity,
                        imageBaseUrl + state.movieDetails!.backdropPath!),
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
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  state.movieDetails!.originalTitle!,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                GestureDetector(onTap: () {
                                  Map<String, dynamic> parm = {
                                    "list": state.movieDetails!,
                                    "data": dataBaseHelper
                                  };
                                  context.read<MovieBookmarkBloc>().add(
                                      MovieBookmarkEvent.addToBookmarkEvent(
                                          data: parm));
                                }, child: BlocBuilder<MovieBookmarkBloc,
                                    MovieBookmarkState>(
                                  builder: (context, state) {
                                    if (state.isBookmark!) {
                                      return const Icon(Icons.bookmark);
                                    } else {
                                      return const Icon(
                                          Icons.bookmark_border);
                                    }
                                  },
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
                                    child: Icon(Icons.star,
                                        color: Colors.amber, size: 14),
                                  ),
                                  TextSpan(
                                      text:
                                          "${state.movieDetails!.voteAverage!} / ${state.movieDetails!.voteCount}",
                                      style: const TextStyle(
                                          color: Colors.black)),
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
                                      text:
                                          "${state.movieDetails!.popularity!}",
                                      style: const TextStyle(
                                          color: Colors.black)),
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
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }
}
