import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test_bloc/feature/movie_bookmarks/presentation/bloc/movie_bookmark_bloc.dart';

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
                  return Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Image.network(
                            imageBaseUrl + state.bookmarksData![index].image!),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Flexible(
                          flex: 3,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(state.bookmarksData![index].name!),
                                  Icon(Icons.delete)
                                ],
                              ),
                              Text(state.bookmarksData![index].rating!),
                            ],
                          )),
                    ],
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
