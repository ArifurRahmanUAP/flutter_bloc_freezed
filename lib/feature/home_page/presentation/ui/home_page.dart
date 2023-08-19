import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test_bloc/feature/home_page/domain/entities/popular_movie.dart';
import 'package:flutter_test_bloc/feature/movie_bookmarks/presentation/ui/bookmark_page.dart';

import '../../../../core/pagination/paged_list_view.dart';
import '../../../movie_details/presentation/ui/movie_details_page.dart';
import '../bloc/movie_list_bloc.dart';
import '../bloc/movie_list_event.dart';
import '../bloc/movie_list_state.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final imageBaseUrl = 'https://image.tmdb.org/t/p/w500/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Movie Apps"),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return const BookmarkPage();
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
              height: MediaQuery
                  .of(context)
                  .size
                  .height * .3,
              child: BlocBuilder<MovieListBloc, MovieListState>(
                buildWhen: (previous, current) => current.nowShowingMovies != null,
                builder: (context, state) {
                  if (state.nowShowingMovies != null) {
                    return PagedListView<Results>(
                      scrollDiraction: Axis.horizontal,
                      isLoading: state.isLoading!,
                      currentPage:
                      int.parse(state.nowShowingMovies!.page.toString()),
                      onNewLoad: (newItem, nextPage) {
                        context.read<MovieListBloc>().add(
                            MovieListEvent.getNowShingMovies(
                                pageNo: nextPage));
                      },
                      totalSize: int.parse(
                          state.nowShowingMovies!.totalResults.toString()),
                      totalPage: int.parse(
                          state.nowShowingMovies!.totalPages.toString()),
                      itemPerPage: 20,
                      items: state.nowShowingMovieList!,
                      itemBuilder: (context, item, index) {

                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return MovieDetailsPage(movieId: item.id!);
                              }),
                            );
                          },
                          child: Container(
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
                                        image: imageBaseUrl + item.posterPath!,
                                        height: 160,
                                      ),
                                    ),
                                  ),
                                ),
                                Text(
                                  item.originalTitle!,
                                ),
                              ],
                            ),
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
                    child: RefreshIndicator(
                      onRefresh: () async {
                        context
                            .read<MovieListBloc>()
                            .add(MovieListEvent.getPopularMovies(
                          pageNo: 1,
                        ));
                      },
                      child: PagedListView<Results>(
                        scrollDiraction: Axis.vertical,
                        isLoading: state.isLoading!,
                        currentPage:
                        int.parse(state.popularMovies!.page.toString()),
                        onNewLoad: (newItem, nextPage) {
                          context.read<MovieListBloc>().add(
                              MovieListEvent.getPopularMovies(
                                  pageNo: nextPage));
                        },
                        totalSize: int.parse(
                            state.popularMovies!.totalResults.toString()),
                        totalPage: int.parse(
                            state.popularMovies!.totalPages.toString()),
                        itemPerPage: 20,
                        items: state.popularMovieList!,
                        itemBuilder: (context, item, index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return MovieDetailsPage(movieId: item.id!);
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
                                            width: 2,
                                            color: Colors.transparent),
                                        borderRadius: BorderRadius.circular(5)),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10.0),
                                      child: FadeInImage.assetNetwork(
                                        placeholder: 'assets/gif/loading.gif',
                                        image: imageBaseUrl + item.posterPath!,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  child: Column(
                                    children: [
                                      Text(item.originalTitle!),
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            const WidgetSpan(
                                              child: Icon(Icons.star,
                                                  color: Colors.amber,
                                                  size: 14),
                                            ),
                                            TextSpan(
                                                text:
                                                "${item.voteAverage}/${item
                                                    .voteCount}",
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
