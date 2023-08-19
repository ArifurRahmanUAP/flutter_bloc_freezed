import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test_bloc/feature/movie_details/presentation/ui/widget/movie_details_widget.dart';
import 'package:flutter_test_bloc/injection.dart';

import '../../../movie_bookmarks/presentation/bloc/movie_bookmark_bloc.dart';
import '../bloc/movie_details_bloc.dart';

class MovieDetailsPage extends StatelessWidget {
  final num movieId;

  const MovieDetailsPage({required this.movieId, super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.pop(context, true);
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Movie Details"),
        ),
        body: SafeArea(
          child: MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => locator<MovieDetailsBloc>()
                  ..add(
                    MovieDetailsEvent.getMovieDetails(movieId: movieId),
                  ),
              ),
              BlocProvider(
                create: (context) => locator<MovieBookmarkBloc>(),
              ),
            ],
            child: BlocBuilder<MovieDetailsBloc, MovieDetailsState>(
              builder: (context, state) {
                if (state.movieDetails != null) {
                  return MovieDetailsWidget(
                    movieDetailsModel: state.movieDetails!,
                    state: state,
                  );
                }
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}