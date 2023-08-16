import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test_bloc/feature/movie_bookmarks/presentation/bloc/movie_bookmark_bloc.dart';

import '../../../../injection.dart';
import '../../../movie_details/presentation/bloc/movie_details_bloc.dart';
import '../../../movie_details/presentation/ui/movie_details_page.dart';

class BookmarkPage extends StatelessWidget {
  const BookmarkPage({super.key});

  final imageBaseUrl = 'https://image.tmdb.org/t/p/w500/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bookmark List"),
      ),
      body: SafeArea(
        child: BlocBuilder<MovieBookmarkBloc, MovieBookmarkState>(
          builder: (context, state) {
            if (state.isLoading!) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state.bookmarksData != null) {
              return ListView.builder(
                itemCount: state.bookmarksData!.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return MultiBlocProvider(
                            providers: [
                              BlocProvider(
                                  create: (context) =>
                                      locator<MovieDetailsBloc>()
                                        ..add(MovieDetailsEvent.getMovieDetails(
                                            movieId: state.bookmarksData![index]
                                                .movieId))),
                              BlocProvider(
                                create: (context) =>
                                    locator<MovieBookmarkBloc>(),
                              )
                            ],
                            child: MovieDetailsPage(),
                          );
                        }),
                      );
                    },
                    child: Row(
                      children: [
                        Flexible(
                          flex: 1,
                          child: Image.network(imageBaseUrl +
                              state.bookmarksData![index].image!),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Flexible(
                            flex: 3,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Flexible(
                                        child: Text(
                                            state.bookmarksData![index].name!)),
                                    GestureDetector(
                                        onTap: () {
                                          context.read<MovieBookmarkBloc>().add(
                                              MovieBookmarkEvent
                                                  .deleteBookmarkEvent(
                                                      movieId: state
                                                          .bookmarksData![index]
                                                          .movieId));

                                          context.read<MovieBookmarkBloc>().add(
                                              const MovieBookmarkEvent
                                                  .getBookmarkEvent());
                                        },
                                        child: const Icon(Icons.delete))
                                  ],
                                ),
                                Text(state.bookmarksData![index].rating!),
                              ],
                            )),
                      ],
                    ),
                  );
                },
              );
            }
            return const Text("");
          },
        ),
      ),
    );
  }
}
