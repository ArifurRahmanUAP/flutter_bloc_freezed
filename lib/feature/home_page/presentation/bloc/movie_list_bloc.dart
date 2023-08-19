import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test_bloc/feature/home_page/domain/entities/popular_movie.dart';
import 'package:flutter_test_bloc/feature/home_page/domain/usecase/get_now_showing_movie_usecase.dart';
import 'package:flutter_test_bloc/feature/home_page/domain/usecase/get_popular_movie_usecase.dart';
import 'package:flutter_test_bloc/feature/home_page/presentation/bloc/movie_list_event.dart';
import 'package:flutter_test_bloc/feature/home_page/presentation/bloc/movie_list_state.dart';

class MovieListBloc extends Bloc<MovieListEvent, MovieListState> {
  final GetPopularMoviesUseCase getPopularMoviesUseCase;
  final GetNowShowingMoviesUseCase getNowShowingMoviesUseCase;

  MovieListBloc(this.getPopularMoviesUseCase, this.getNowShowingMoviesUseCase)
      : super(MovieListState.initial()) {
    on<MovieListEvent>(
      (event, emit) async {
        await event.map(
          getPopularMovies: (value) async {
            emit(state.copyWith(isLoading: true));
            final response = await getPopularMoviesUseCase(value.pageNo);
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
                List<Results> s = state.popularMovies?.results ?? [];
                if (value.pageNo > 1) {
                  s.addAll(data.results!);
                  emit(
                    state.copyWith(
                        isLoading: false,
                        isLoadingMore: false,
                        popularMovies: data,
                        popularMovieList: s),
                  );
                } else {
                  s.clear();
                  s = data.results!;
                  emit(
                    state.copyWith(
                        isLoading: false,
                        isLoadingMore: false,
                        popularMovies: data,
                        popularMovieList: s),
                  );
                }
              },
            );
          },
          getNowShingMovies: (value) async {
            emit(state.copyWith(isLoading: true));
            final response = await getNowShowingMoviesUseCase(value.pageNo);
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
                List<Results> s = state.nowShowingMovies?.results ?? [];
                if (value.pageNo > 1) {
                  s.addAll(data.results!);
                  emit(
                    state.copyWith(
                        isLoading: false,
                        isLoadingMore: false,
                        nowShowingMovies: data,
                        nowShowingMovieList: s),
                  );
                } else {
                  s.clear();
                  s = data.results!;
                  emit(
                    state.copyWith(
                        isLoading: false,
                        isLoadingMore: false,
                        nowShowingMovies: data,
                        nowShowingMovieList: s),
                  );
                }
              },
            );
          },
        );
      },
    );
  }
}
