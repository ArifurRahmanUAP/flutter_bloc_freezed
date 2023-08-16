import 'package:flutter_test_bloc/feature/movie_bookmarks/domain/entities/get_bookmarks.dart';

//ignore: must_be_immutable
class GetBookmarksModel extends GetBookmarks {
  GetBookmarksModel({
    this.movieId,
    this.name,
    this.rating,
    this.genres,
    this.duration,
    this.image,
  });

  GetBookmarksModel.fromJson(dynamic json) {
    movieId = json['movieId'];
    name = json['name'];
    rating = json['rating'];
    genres = json['genres'];
    duration = json['duration'];
    image = json['image'];
  }

  @override
  int? movieId;
  @override
  String? name;
  @override
  String? rating;
  @override
  String? genres;
  @override
  String? duration;
  @override
  String? image;

  factory GetBookmarksModel.fromObject({required GetBookmarks getBookmarks}) =>
      GetBookmarksModel(
        movieId: getBookmarks.movieId,
        name: getBookmarks.name,
        rating: getBookmarks.rating,
        genres: getBookmarks.genres,
        duration: getBookmarks.duration,
        image: getBookmarks.image,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['movieId'] = movieId;
    map['name'] = name;
    map['rating'] = rating;
    map['genres'] = genres;
    map['duration'] = duration;
    map['image'] = image;
    return map;
  }
}
