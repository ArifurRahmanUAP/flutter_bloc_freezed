import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test_bloc/feature/home_page/domain/usecase/get_now_showing_movie_usecase.dart';
import 'package:flutter_test_bloc/feature/home_page/domain/usecase/get_popular_movie_usecase.dart';
import 'package:flutter_test_bloc/feature/home_page/presentation/bloc/movie_list_event.dart';
import 'package:flutter_test_bloc/feature/home_page/presentation/bloc/movie_list_state.dart';

import '../../../../core/usecases/usecase.dart';

class MovieListBloc extends Bloc<MovieListEvent, MovieListState> {
  final GetPopularMoviesUseCase getPopularMoviesUseCase;
  final GetNowShowingMoviesUseCase getNowShowingMoviesUseCase;

  MovieListBloc(this.getPopularMoviesUseCase, this.getNowShowingMoviesUseCase)
      : super(MovieListState.initial()) {
    on<MovieListEvent>((event, emit) async {
      await event.map(getPopularMovies: (value) async {
        emit(state.copyWith(isLoading: true));
        final response = await getPopularMoviesUseCase(NoParams());
        await response?.fold(
          (failure) async {
            emit(
              state.copyWith(
                isLoading: false,
                isFailure: true,
                failureMessage: failure.message,
              ),
            );
          },
          (data) async {
            emit(state.copyWith(
              isLoading: false,
              popularMovies: data,
            ));
          },
        );
      }, getNowShingMovies: (value) async {
        emit(state.copyWith(isLoading: true));
        final response = await getNowShowingMoviesUseCase(NoParams());
        await response?.fold((failure) async {
          emit(state.copyWith(
              isLoading: false,
              isFailure: true,
              failureMessage: failure.message));
        }, (data) async {
          emit(state.copyWith(isLoading: false, nowShowingMovies: data));
        });
      });
    });
  }
}
