import 'package:bloc/bloc.dart';
import 'package:flutter_test_bloc/feature/movie_details/domain/entities/movie_details.dart';
import 'package:flutter_test_bloc/feature/movie_details/domain/useCase/is_bookmark.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/useCase/movie_details_use_case.dart';

part 'movie_details_bloc.freezed.dart';

part 'movie_details_event.dart';

part 'movie_details_state.dart';

class MovieDetailsBloc extends Bloc<MovieDetailsEvent, MovieDetailsState> {
  final GetMovieDetailsUseCase getMovieDetailsUseCase;
  final IsBookmarkUseCase isBookmarkUseCase;

  MovieDetailsBloc(this.getMovieDetailsUseCase, this.isBookmarkUseCase)
      : super(MovieDetailsState.initial()) {
    on<MovieDetailsEvent>(
      (event, emit) async {
        await event.map(
          getMovieDetails: (value) async {
            emit(state.copyWith(isLoading: true));
            final response = await getMovieDetailsUseCase(event.movieId);
            await response?.fold((failure) async {
              emit(state.copyWith(
                  isLoading: false,
                  isFailure: true,
                  failureMessage: failure.message));
            }, (data) {
              emit(state.copyWith(isLoading: false, movieDetails: data));
              add(MovieDetailsEvent.isMovieBookmark(movieId: data.id));

            });
          },
          isMovieBookmark: (value) async {
            final response = await isBookmarkUseCase(value.movieId);
            await response?.fold(
              (failure) async {
                emit(state.copyWith(
                    isLoading: false,
                    isFailure: true,
                    failureMessage: failure.message));
              },
              (data) {
                print("aaa: $data");
                emit(state.copyWith(isLoading: false, isBookmark: data));
              },
            );
          },
        );
      },
    );
  }
}
