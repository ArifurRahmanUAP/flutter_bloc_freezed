import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test_bloc/feature/home_page/presentation/bloc/movie_list_event.dart';

import 'core/database/data_base_helper.dart';
import 'feature/home_page/presentation/bloc/movie_list_bloc.dart';
import 'feature/home_page/presentation/ui/home_page.dart';
import 'injection.dart';

void main() {
  init();
  runApp(const MyApp());
  locator<DataBaseHelper>().init();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BlocProvider(
        create: (context) => locator<MovieListBloc>()
          ..add( MovieListEvent.getPopularMovies(pageNo: 1))
          ..add(const MovieListEvent.getNowShingMovies(pageNo: 1)),
        child: HomePage(),
      ),
    );
  }
}
