import 'package:dio/dio.dart';
import 'package:flutter_test_bloc/feature/home_page/data/repositories/movie_list_repository_impl.dart';
import 'package:flutter_test_bloc/feature/home_page/data/source/data_source.dart';
import 'package:flutter_test_bloc/feature/home_page/domain/repositories/movie_repository.dart';
import 'package:flutter_test_bloc/feature/home_page/domain/usecase/get_now_showing_movie_usecase.dart';
import 'package:flutter_test_bloc/feature/home_page/domain/usecase/get_popular_movie_usecase.dart';
import 'package:flutter_test_bloc/feature/movie_details/data/repository/movie_details_repositories_impl.dart';
import 'package:flutter_test_bloc/feature/movie_details/domain/useCase/movie_add_to_bookmark.dart';
import 'package:flutter_test_bloc/feature/movie_details/domain/useCase/movie_details_use_case.dart';
import 'package:get_it/get_it.dart';
import 'feature/home_page/presentation/bloc/movie_list_bloc.dart';
import 'feature/movie_details/data/repository/movie_bookmark_repository_impl.dart';
import 'feature/movie_details/data/source/data_source.dart';
import 'feature/movie_details/domain/repositories/movie_book_mark_repository.dart';
import 'feature/movie_details/domain/repositories/movie_details_repositories.dart';
import 'feature/movie_details/presentation/bloc/movie_bookmark_bloc/movie_bookmark_bloc.dart';
import 'feature/movie_details/presentation/bloc/movie_details_bloc/movie_details_bloc.dart';

final sl = GetIt.instance;
final dio = Dio();

void init() {
  // Bloc
  sl.registerFactory(
    () => MovieListBloc(sl(), sl()),
  );
  sl.registerFactory(
    () => MovieDetailsBloc(sl()),
  );
  sl.registerFactory(
        () => MovieBookmarkBloc(sl()),
  );

  // Usecases
  sl.registerLazySingleton(
    () => GetPopularMoviesUseCase(repository: sl()),
  );

  sl.registerLazySingleton(
    () => GetNowShowingMoviesUseCase(repository: sl()),
  );
  sl.registerLazySingleton(
        () => GetMovieDetailsUseCase(repository: sl()),
  );
  sl.registerLazySingleton(
        () => AddMoviesToBookmarkUseCase(repository: sl()),
  );
  // Repositories
  sl.registerLazySingleton<MovieListRepository>(
    () => MovieListRepositoriesImpl(movieListRemoteDataSource: sl()),
  );
  sl.registerLazySingleton<MovieDetailsRepository>(
        () => MovieDetailsRepositoriesImpl(movieDetailsRemoteSource: sl()),
  );
  sl.registerLazySingleton<MovieBookMarkRepository>(
        () => MovieBookMarkRepositoryImpl(movieDetailsRemoteSource: sl()),
  );

  // Datasources
  sl.registerLazySingleton<MovieListRemoteSource>(
    () => MovieListRemoteDataSourceImpl(sl()),
  );
  sl.registerLazySingleton<MovieDetailsRemoteSource>(
    () => MovieDetailsRemoteSourceImpl(sl()),
  );

  // Core

  // Externals
  sl.registerLazySingleton(() => dio);
}
