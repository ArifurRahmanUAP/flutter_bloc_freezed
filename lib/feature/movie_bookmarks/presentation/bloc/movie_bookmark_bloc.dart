import 'package:bloc/bloc.dart';
import 'package:flutter_test_bloc/core/usecases/usecase.dart';
import 'package:flutter_test_bloc/feature/movie_bookmarks/domain/entities/get_bookmarks.dart';
import 'package:flutter_test_bloc/feature/movie_bookmarks/domain/useCase/delete_bookmark_usecase.dart';
import 'package:flutter_test_bloc/feature/movie_bookmarks/domain/useCase/get_bookmarks_data_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/useCase/movie_add_to_bookmark_usecase.dart';

part 'movie_bookmark_bloc.freezed.dart';

part 'movie_bookmark_event.dart';

part 'movie_bookmark_state.dart';

class MovieBookmarkBloc extends Bloc<MovieBookmarkEvent, MovieBookmarkState> {
  final AddMoviesToBookmarkUseCase addMoviesToBookmarkUseCase;
  final GetBookmarksMovieUseCase getBookmarksMovieUseCase;
  final DeleteBookmarkUseCase deleteBookmarkUseCase;

  MovieBookmarkBloc(this.addMoviesToBookmarkUseCase,
      this.getBookmarksMovieUseCase, this.deleteBookmarkUseCase)
      : super(MovieBookmarkState.initial()) {
    on<MovieBookmarkEvent>(
      (event, emit) async {
        await event.map(
          addToBookmarkEvent: (value) async {
            emit(state.copyWith(isLoading: true));
            final response =
                await addMoviesToBookmarkUseCase(value.movieDetails);
            await response?.fold((failure) async {
              emit(state.copyWith(
                  isLoading: false,
                  isFailure: true,
                  failureMessage: failure.message));
            }, (data) {});
          },
          getBookmarkEvent: (value) async {
            emit(state.copyWith(isLoading: true));

            final response = await getBookmarksMovieUseCase(NoParams());
            await response?.fold((failure) async {
              emit(state.copyWith(
                  isLoading: false,
                  isFailure: true,
                  failureMessage: failure.message));
            }, (data) {
              emit(state.copyWith(isLoading: false, bookmarksData: data));
            });
          },
          deleteBookmarkEvent: (value) async {
            final response = await deleteBookmarkUseCase(value.movieId);
            await response?.fold((failure) async {
              emit(state.copyWith(
                  isLoading: false,
                  isFailure: true,
                  failureMessage: failure.message));
            }, (data) {
              List<GetBookmarks>? datas = [];
              for (var i in state.bookmarksData!) {
                if (i.movieId != value.movieId) {
                  datas.add(i.copyWith());
                }
              }

              emit(state.copyWith(isLoading: false, bookmarksData: datas));
            });
          },
        );
      },
    );
  }
}
