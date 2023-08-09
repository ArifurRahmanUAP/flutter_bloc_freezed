import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test_bloc/feature/home_page/presentation/bloc/movie_list_bloc.dart';
import 'package:flutter_test_bloc/feature/home_page/presentation/bloc/movie_list_state.dart';
import 'package:flutter_test_bloc/feature/movie_details/presentation/bloc/movie_details_bloc.dart';
import 'package:flutter_test_bloc/feature/movie_details/presentation/ui/movie_details_page.dart';

import '../../../../injection.dart';

//ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({super.key});

  var imageBaseUrl = 'https://image.tmdb.org/t/p/w500/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Movie Apps")),
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
                          margin: const EdgeInsets.only(right: 3, left: 3),
                          decoration: BoxDecoration(
                            border: Border.all(width: 1),
                            color: Colors.transparent,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(5),
                            ),
                          ),
                          child: Column(
                            children: [
                              Image.network(
                                  fit: BoxFit.fill,
                                  height:
                                      MediaQuery.of(context).size.height * .25,
                                  imageBaseUrl + data!.posterPath!),
                              Text(data.originalTitle!),
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
                                return BlocProvider(
                                  create: (context) => sl<MovieDetailsBloc>()
                                    ..add(MovieDetailsEvent.getMovieDetails(
                                        movieId: data.id)),
                                  child: const MovieDetailsPage(),
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
                                      border: Border.all(width: 2),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Image.network(
                                    imageBaseUrl + data.posterPath!,
                                    fit: BoxFit.cover,
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
