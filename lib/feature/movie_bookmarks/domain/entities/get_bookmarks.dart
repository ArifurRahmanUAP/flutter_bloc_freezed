import 'package:equatable/equatable.dart';

class GetBookmarks extends Equatable {
  const GetBookmarks({
    this.movieId,
    this.name,
    this.rating,
    this.genres,
    this.duration,
    this.image,
  });

  final int? movieId;
  final String? name;
  final String? rating;
  final String? genres;
  final String? duration;
  final String? image;

  GetBookmarks copyWith({
    int? movieId,
    String? name,
    String? rating,
    String? genres,
    String? duration,
    String? image,
  }) =>
      GetBookmarks(
        movieId: movieId ?? this.movieId,
        name: name ?? this.name,
        rating: rating ?? this.rating,
        genres: genres ?? this.genres,
        duration: duration ?? this.duration,
        image: image ?? this.image,
      );

  @override
  List<Object?> get props => [
        name,
        rating,
        genres,
        duration,
        image,
      ];
}
