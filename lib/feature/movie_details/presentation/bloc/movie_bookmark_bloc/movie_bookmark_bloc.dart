import 'package:bloc/bloc.dart';
import 'package:flutter_test_bloc/feature/movie_details/domain/useCase/movie_add_to_bookmark.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_bookmark_bloc.freezed.dart';

part 'movie_bookmark_event.dart';

part 'movie_bookmark_state.dart';

class MovieBookmarkBloc extends Bloc<MovieBookmarkEvent, MovieBookmarkState> {
  final AddMoviesToBookmarkUseCase addMoviesToBookmarkUseCase;

  MovieBookmarkBloc(this.addMoviesToBookmarkUseCase)
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
            emit(state.copyWith(isLoading: true, isBookmark: data == 1 ? true: false));
          });
        },
      );
    });
  }
}
