import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test_bloc/feature/movie_bookmarks/presentation/ui/bookmark_page.dart';

import '../../../../core/database/data_base_helper.dart';
import '../../../../injection.dart';
import '../../../movie_bookmarks/presentation/bloc/movie_bookmark_bloc.dart';
import '../../../movie_details/presentation/bloc/movie_details_bloc.dart';
import '../../../movie_details/presentation/ui/movie_details_page.dart';
import '../bloc/movie_list_bloc.dart';
import '../bloc/movie_list_state.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final imageBaseUrl = 'https://image.tmdb.org/t/p/w500/';
  final DataBaseHelper dataBaseHelper = locator<DataBaseHelper>();

  @override
  Widget build(BuildContext context) {
    dataBaseHelper.init();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Movie Apps"),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return BlocProvider(
                    create: (context) => locator<MovieBookmarkBloc>()
                      ..add(const MovieBookmarkEvent.getBookmarkEvent()),
                    child: const BookmarkPage(),
                  );
                }),
              );
            },
            child: const Icon(Icons.book),
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Now Showing"),
            SizedBox(
              height: MediaQuery.of(context).size.height * .3,
              child: BlocBuilder<MovieListBloc, MovieListState>(
                buildWhen: (previous, current) =>
                    current.nowShowingMovies != null,
                builder: (context, state) {
                  if (state.nowShowingMovies != null) {
                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        var data = state.nowShowingMovies?.results![index];
                        return Container(
                          decoration: BoxDecoration(
                            border:
                                Border.all(width: 2, color: Colors.transparent),
                            color: Colors.transparent,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(5),
                            ),
                          ),
                          child: Column(
                            children: [
                              Flexible(
                                child: SizedBox(
                                  height: 200,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(5.0),
                                    child: FadeInImage.assetNetwork(
                                      placeholder: 'assets/gif/loading.gif',
                                      image: imageBaseUrl + data!.posterPath!,
                                      height: 160,
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                data.originalTitle!,
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  }
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
              ),
            ),
            const Text("Popular Movies"),
            BlocBuilder<MovieListBloc, MovieListState>(
              buildWhen: (previous, current) => current.popularMovies != null,
              builder: (context, state) {
                if (state.popularMovies != null) {
                  return Expanded(
                    child: ListView.builder(
                      itemCount: state.popularMovies!.results!.length,
                      itemBuilder: (context, index) {
                        var data = state.popularMovies!.results![index];
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
                                              ..add(MovieDetailsEvent
                                                  .getMovieDetails(
                                                      movieId: data.id))),
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
                                child: Container(
                                  margin: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 2, color: Colors.transparent),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10.0),
                                    child: FadeInImage.assetNetwork(
                                      placeholder: 'assets/gif/loading.gif',
                                      image: imageBaseUrl + data.posterPath!,
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 2,
                                child: Column(
                                  children: [
                                    Text(data.originalTitle!),
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          const WidgetSpan(
                                            child: Icon(Icons.star,
                                                color: Colors.amber, size: 14),
                                          ),
                                          TextSpan(
                                              text:
                                                  "${data.voteAverage}/${data.voteCount}",
                                              style: const TextStyle(
                                                  color: Colors.black)),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  );
                }
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
