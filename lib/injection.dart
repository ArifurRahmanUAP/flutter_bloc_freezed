import 'package:dio/dio.dart';
import 'package:flutter_test_bloc/feature/home_page/data/repositories/movie_list_repository_impl.dart';
import 'package:flutter_test_bloc/feature/home_page/data/source/data_source.dart';
import 'package:flutter_test_bloc/feature/home_page/domain/repositories/movie_repository.dart';
import 'package:flutter_test_bloc/feature/home_page/domain/usecase/get_popular_movie_usecase.dart';
import 'package:get_it/get_it.dart';

import 'feature/home_page/presentation/bloc/movie_list_bloc.dart';


final sl = GetIt.instance;
final dio = Dio();

void init() {
  // Bloc
  sl.registerFactory(
    () => MovieListBloc(sl()),
  );

  // Usecases
  sl.registerLazySingleton(
    () => GetPopularMoviesUseCase(repository: sl()),
  );



  // Repositories
  sl.registerLazySingleton<MovieListRepository>(
    () => MovieListRepositoriesImpl(movieListRemoteDataSource: sl()),
  );

  // Datasources
  sl.registerLazySingleton<MovieListRemoteSource>(
    () => MovieListRemoteDataSourceImpl(sl()),
  );

  // Core

  // Externals
  sl.registerLazySingleton(() => dio);
}
