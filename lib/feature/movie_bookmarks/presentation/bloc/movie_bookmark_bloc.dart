import 'package:bloc/bloc.dart';
import 'package:flutter_test_bloc/core/database/data_base_helper.dart';
import 'package:flutter_test_bloc/feature/movie_bookmarks/domain/entities/get_bookmarks.dart';
import 'package:flutter_test_bloc/feature/movie_bookmarks/domain/useCase/get_bookmarks_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/useCase/movie_add_to_bookmark.dart';

part 'movie_bookmark_bloc.freezed.dart';

part 'movie_bookmark_event.dart';

part 'movie_bookmark_state.dart';

class MovieBookmarkBloc extends Bloc<MovieBookmarkEvent, MovieBookmarkState> {
  final AddMoviesToBookmarkUseCase addMoviesToBookmarkUseCase;
  final GetBookmarksMovieUseCase getBookmarksMovieUseCase;

  MovieBookmarkBloc(
      this.addMoviesToBookmarkUseCase, this.getBookmarksMovieUseCase)
      : super(MovieBookmarkState.initial()) {
    on<MovieBookmarkEvent>((event, emit) async {
      await event.map(
        isMovieBookmarkEvent: (value) async {},
        addToBookmarkEvent: (value) async {
          emit(state.copyWith(isLoading: true));
          final response = await addMoviesToBookmarkUseCase(value.data);
          await response?.fold((failure) async {
            emit(state.copyWith(
                isLoading: false,
                isFailure: true,
                failureMessage: failure.message));
          }, (data) {
            emit(state.copyWith(
                isLoading: true, isBookmark: data == 1 ? true : false));
          });
        },
        getBookmarkEvent: (value) async {
          emit(state.copyWith(isLoading: true));
          final response = await getBookmarksMovieUseCase(value.dataBaseHelper);
          await response?.fold((failure) async {
            emit(state.copyWith(
                isLoading: false,
                isFailure: true,
                failureMessage: failure.message));
          }, (data) {
            emit(state.copyWith(isLoading: false, bookmarksData: data));
          });
        },
      );
    });
  }
}
