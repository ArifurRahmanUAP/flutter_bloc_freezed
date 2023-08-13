import 'dart:io' as io;
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter_test_bloc/feature/movie_details/domain/entities/movie_details.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

import '../../feature/movie_bookmarks/bookmark_page.dart';

class DataBaseHelper {
  late Database _db;

  Future<void> init() async {
    Directory applicationDirectory = await getApplicationDocumentsDirectory();

    String dbPathName = path.join(applicationDirectory.path, "movielist.db");

    bool isExists = await io.File(dbPathName).exists();

    if (!isExists) {
      // Copy from asset
      ByteData data =
          await rootBundle.load(path.join("assets", "movielist.db"));
      List<int> bytes =
          data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);

      // Write and flush the bytes other
      await io.File(dbPathName).writeAsBytes(bytes, flush: true);
    }

    _db = await openDatabase(dbPathName);
  }

  Future<List<SaveDataModel>> getBookMarks() async {
    List<Map<String, dynamic>> maps = await _db.query('movielist');

    var data = List.generate(maps.length, (i) {
      return SaveDataModel(
        movieId: maps[i]["movieId"],
        name: maps[i]["name"],
        duration: maps[i]["duration"],
        genres: maps[i]["genres"],
        image: maps[i]["image"],
        rating: maps[i]["rating"],
      );
    });
    return data;
  }

  Future<List<Map<String, Object?>>> addToBookmark(
      MovieDetails movieDetails) async {
    List? geners = [];
    for (var i in movieDetails.genres!) {
      geners.add(i.name);
    }

    String q = "INSERT INTO movielist (movieId, name, rating, genres, duration, image) SELECT '${movieDetails.id}','${movieDetails.originalTitle}' ,'${movieDetails.voteAverage}' ,"
        "'${geners.join(",")}' ,'${movieDetails.runtime}', '${movieDetails.posterPath}' WHERE '${movieDetails.id}' NOT IN (SELECT movieId FROM movielist)";
    print("asd: ${await _db.rawQuery(q)}");

    return await _db.rawQuery(q);
  }

  Future<void> updateNotification(SaveDataModel saveDataModel) async {
    await _db.update(
      'movielist', saveDataModel.toJson(),
      // Ensure that the Dog has a matching id.
      where: "movieId = ?", whereArgs: [saveDataModel.movieId],
    );
  }
}
