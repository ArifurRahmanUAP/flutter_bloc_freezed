import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test_bloc/feature/movie_bookmarks/presentation/bloc/movie_bookmark_bloc.dart';

import '../../../../injection.dart';
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
        child: BlocProvider(
          create: (context) => locator<MovieBookmarkBloc>()
            ..add(const MovieBookmarkEvent.getBookmarkEvent()),
          child: BlocBuilder<MovieBookmarkBloc, MovieBookmarkState>(
            builder: (context, state) {
              if (state.isLoading!) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state.bookmarksData!.isNotEmpty) {
                return ListView.builder(
                  itemCount: state.bookmarksData!.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () async {
                       Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => MovieDetailsPage(
                                    movieId: state.bookmarksData![index].movieId
                                        as num))).then((value) {
                        if(value){
                          context.read<MovieBookmarkBloc>().add(const MovieBookmarkEvent.getBookmarkEvent());
                        }
                      });

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
                                          child: Text(state
                                              .bookmarksData![index].name!)),
                                      GestureDetector(
                                          onTap: () {
                                            context
                                                .read<MovieBookmarkBloc>()
                                                .add(MovieBookmarkEvent
                                                    .deleteBookmarkEvent(
                                                        movieId: state
                                                            .bookmarksData![
                                                                index]
                                                            .movieId));
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
              } else if (state.bookmarksData!.isEmpty) {
                return Center(child: Image.asset("assets/image/nodata.png"));
              }
              return Container();
            },
          ),
        ),
      ),
    );
  }
}
