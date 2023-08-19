import 'package:dio/dio.dart';
import 'package:flutter_test_bloc/core/database/data_base_helper.dart';
import 'package:flutter_test_bloc/feature/home_page/data/repositories/movie_list_repository_impl.dart';
import 'package:flutter_test_bloc/feature/home_page/data/source/data_source.dart';
import 'package:flutter_test_bloc/feature/home_page/domain/repositories/movie_repository.dart';
import 'package:flutter_test_bloc/feature/home_page/domain/usecase/get_now_showing_movie_usecase.dart';
import 'package:flutter_test_bloc/feature/home_page/domain/usecase/get_popular_movie_usecase.dart';
import 'package:flutter_test_bloc/feature/movie_bookmarks/data/source/data_source.dart';
import 'package:flutter_test_bloc/feature/movie_bookmarks/domain/useCase/get_bookmarks_data_usecase.dart';
import 'package:flutter_test_bloc/feature/movie_bookmarks/domain/useCase/movie_add_to_bookmark_usecase.dart';
import 'package:flutter_test_bloc/feature/movie_details/data/repository/movie_details_repositories_impl.dart';
import 'package:flutter_test_bloc/feature/movie_details/domain/useCase/is_bookmark.dart';
import 'package:flutter_test_bloc/feature/movie_details/domain/useCase/movie_details_use_case.dart';
import 'package:get_it/get_it.dart';

import 'feature/home_page/presentation/bloc/movie_list_bloc.dart';
import 'feature/movie_bookmarks/data/repositories/movie_bookmark_repository_impl.dart';
import 'feature/movie_bookmarks/domain/repositories/movie_book_mark_repository.dart';
import 'feature/movie_bookmarks/domain/useCase/delete_bookmark_usecase.dart';
import 'feature/movie_bookmarks/presentation/bloc/movie_bookmark_bloc.dart';
import 'feature/movie_details/data/source/data_source.dart';
import 'feature/movie_details/domain/repositories/movie_details_repositories.dart';
import 'feature/movie_details/presentation/bloc/movie_details_bloc.dart';

final locator = GetIt.instance;

void init() {
  /// Bloc
  locator.registerFactory(
    () => MovieListBloc(locator(), locator()),
  );
  locator.registerFactory(
    () => MovieDetailsBloc(locator(), locator()),
  );
  locator.registerFactory(
    () => MovieBookmarkBloc(locator(), locator(), locator()),
  );

  /// Usecases
  locator.registerLazySingleton(
    () => GetPopularMoviesUseCase(repository: locator()),
  );

  locator.registerLazySingleton(
    () => GetNowShowingMoviesUseCase(repository: locator()),
  );
  locator.registerLazySingleton(
    () => GetMovieDetailsUseCase(repository: locator()),
  );
  locator.registerLazySingleton(
    () => IsBookmarkUseCase(repository: locator()),
  );
  locator.registerLazySingleton(
    () => DeleteBookmarkUseCase(repository: locator()),
  );
  locator.registerLazySingleton(
    () => AddMoviesToBookmarkUseCase(repository: locator()),
  );

  locator.registerLazySingleton(
    () => GetBookmarksMovieUseCase(repository: locator()),
  );

  /// Repositories
  locator.registerLazySingleton<MovieListRepository>(
    () => MovieListRepositoriesImpl(movieListRemoteDataSource: locator()),
  );
  locator.registerLazySingleton<MovieDetailsRepository>(
    () => MovieDetailsRepositoriesImpl(movieDetailsRemoteSource: locator()),
  );
  locator.registerLazySingleton<MovieBookMarkRepository>(
    () => MovieBookMarkRepositoryImpl(bookmarkRemoteSource: locator()),
  );

  /// Datasources
  locator.registerLazySingleton<MovieListRemoteSource>(
    () => MovieListRemoteDataSourceImpl(locator()),
  );
  locator.registerLazySingleton<MovieDetailsRemoteSource>(
    () => MovieDetailsRemoteSourceImpl(locator(), locator()),
  );

  locator.registerLazySingleton<BookmarkRemoteSource>(
    () => GetBookmarkRemoteSourceImpl(locator(), locator()),
  );

  /// Core
  /// Externals
  locator.registerLazySingleton(() => Dio());
  locator.registerLazySingleton(() => DataBaseHelper());
}
