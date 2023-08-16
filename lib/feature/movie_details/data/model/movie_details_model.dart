import 'package:flutter_test_bloc/feature/movie_details/domain/entities/movie_details.dart';

class MovieDetailsModel extends MovieDetails {
  MovieDetailsModel({
    super.adult,
    super.backdropPath,
    super.belongsToCollection,
    super.budget,
    super.genres,
    super.homepage,
    super.id,
    super.imdbId,
    super.originalLanguage,
    super.originalTitle,
    super.overview,
    super.popularity,
    super.posterPath,
    super.productionCompanies,
    super.productionCountries,
    super.releaseDate,
    super.revenue,
    super.runtime,
    super.spokenLanguages,
    super.status,
    super.tagline,
    super.title,
    super.video,
    super.voteAverage,
    super.voteCount,
  });

  MovieDetailsModel.fromJson(dynamic json) {
    adult = json['adult'];
    backdropPath = json['backdrop_path'];
    belongsToCollection = json['belongs_to_collection'];
    budget = json['budget'];
    if (json['genres'] != null) {
      genres = [];
      json['genres'].forEach((v) {
        genres?.add(GenresModel.fromJson(v));
      });
    }
    homepage = json['homepage'];
    id = json['id'];
    imdbId = json['imdb_id'];
    originalLanguage = json['original_language'];
    originalTitle = json['original_title'];
    overview = json['overview'];
    popularity = json['popularity'];
    posterPath = json['poster_path'];
    if (json['production_companies'] != null) {
      productionCompanies = [];
      json['production_companies'].forEach((v) {
        productionCompanies?.add(ProductionCompaniesModel.fromJson(v));
      });
    }
    if (json['production_countries'] != null) {
      productionCountries = [];
      json['production_countries'].forEach((v) {
        productionCountries?.add(ProductionCountriesModel.fromJson(v));
      });
    }
    releaseDate = json['release_date'];
    revenue = json['revenue'];
    runtime = json['runtime'];
    if (json['spoken_languages'] != null) {
      spokenLanguages = [];
      json['spoken_languages'].forEach((v) {
        spokenLanguages?.add(SpokenLanguagesModel.fromJson(v));
      });
    }
    status = json['status'];
    tagline = json['tagline'];
    title = json['title'];
    video = json['video'];
    voteAverage = json['vote_average'];
    voteCount = json['vote_count'];
  }

  factory MovieDetailsModel.fromObject(
          {required MovieDetails movieDetailsModel}) =>
      MovieDetailsModel(
        adult: movieDetailsModel.adult,
        backdropPath: movieDetailsModel.backdropPath,
        belongsToCollection: movieDetailsModel.belongsToCollection,
        budget: movieDetailsModel.budget,
        genres: movieDetailsModel.genres,
        homepage: movieDetailsModel.homepage,
        id: movieDetailsModel.id,
        imdbId: movieDetailsModel.imdbId,
        originalLanguage: movieDetailsModel.originalLanguage,
        originalTitle: movieDetailsModel.originalTitle,
        overview: movieDetailsModel.overview,
        popularity: movieDetailsModel.popularity,
        posterPath: movieDetailsModel.posterPath,
        releaseDate: movieDetailsModel.releaseDate,
        revenue: movieDetailsModel.revenue,
        runtime: movieDetailsModel.runtime,
        status: movieDetailsModel.status,
        tagline: movieDetailsModel.tagline,
        title: movieDetailsModel.title,
        video: movieDetailsModel.video,
        voteAverage: movieDetailsModel.voteAverage,
        voteCount: movieDetailsModel.voteCount,
        productionCompanies: movieDetailsModel.productionCompanies,
        productionCountries: movieDetailsModel.productionCountries,
        spokenLanguages: movieDetailsModel.spokenLanguages,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['adult'] = adult;
    map['backdrop_path'] = backdropPath;
    map['belongs_to_collection'] = belongsToCollection;
    map['budget'] = budget;
    if (genres != null) {
      map['genres'] = genres
          ?.map((v) => GenresModel.fromObject(genres: v).toJson())
          .toList();
    }
    map['homepage'] = homepage;
    map['id'] = id;
    map['imdb_id'] = imdbId;
    map['original_language'] = originalLanguage;
    map['original_title'] = originalTitle;
    map['overview'] = overview;
    map['popularity'] = popularity;
    map['poster_path'] = posterPath;
    if (productionCompanies != null) {
      map['production_companies'] = productionCompanies
          ?.map((v) =>
              ProductionCompaniesModel.fromObject(productionCompanies: v)
                  .toJson())
          .toList();
    }
    if (productionCountries != null) {
      map['production_countries'] = productionCountries
          ?.map((v) =>
              ProductionCountriesModel.fromObject(productionCountries: v)
                  .toJson())
          .toList();
    }
    map['release_date'] = releaseDate;
    map['revenue'] = revenue;
    map['runtime'] = runtime;
    if (spokenLanguages != null) {
      map['spoken_languages'] = spokenLanguages
          ?.map((v) =>
              SpokenLanguagesModel.fromObject(spokenLanguages: v).toJson())
          .toList();
    }
    map['status'] = status;
    map['tagline'] = tagline;
    map['title'] = title;
    map['video'] = video;
    map['vote_average'] = voteAverage;
    map['vote_count'] = voteCount;
    return map;
  }
}
//ignore
class SpokenLanguagesModel extends SpokenLanguages {
  SpokenLanguagesModel({
    this.englishName,
    this.iso6391,
    this.name,
  });

  SpokenLanguagesModel.fromJson(dynamic json) {
    englishName = json['english_name'];
    iso6391 = json['iso_639_1'];
    name = json['name'];
  }

  factory SpokenLanguagesModel.fromObject(
          {required SpokenLanguages spokenLanguages}) =>
      SpokenLanguagesModel(
        englishName: spokenLanguages.englishName,
        iso6391: spokenLanguages.iso6391,
        name: spokenLanguages.name,
      );

  @override
  String? englishName;
  @override
  String? iso6391;
  @override
  String? name;

  @override
  SpokenLanguagesModel copyWith({
    String? englishName,
    String? iso6391,
    String? name,
  }) =>
      SpokenLanguagesModel(
        englishName: englishName ?? this.englishName,
        iso6391: iso6391 ?? this.iso6391,
        name: name ?? this.name,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['english_name'] = englishName;
    map['iso_639_1'] = iso6391;
    map['name'] = name;
    return map;
  }
}

class ProductionCountriesModel extends ProductionCountries {
  ProductionCountriesModel({
    this.iso31661,
    this.name,
  });

  ProductionCountriesModel.fromJson(dynamic json) {
    iso31661 = json['iso_3166_1'];
    name = json['name'];
  }

  factory ProductionCountriesModel.fromObject(
          {required ProductionCountries productionCountries}) =>
      ProductionCountriesModel(
        iso31661: productionCountries.iso31661,
        name: productionCountries.name,
      );

  @override
  String? iso31661;
  @override
  String? name;

  @override
  ProductionCountriesModel copyWith({
    String? iso31661,
    String? name,
  }) =>
      ProductionCountriesModel(
        iso31661: iso31661 ?? this.iso31661,
        name: name ?? this.name,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['iso_3166_1'] = iso31661;
    map['name'] = name;
    return map;
  }
}

class ProductionCompaniesModel extends ProductionCompanies {
  ProductionCompaniesModel({
    this.id,
    this.logoPath,
    this.name,
    this.originCountry,
  });

  ProductionCompaniesModel.fromJson(dynamic json) {
    id = json['id'];
    logoPath = json['logo_path'];
    name = json['name'];
    originCountry = json['origin_country'];
  }

  factory ProductionCompaniesModel.fromObject(
          {required ProductionCompanies productionCompanies}) =>
      ProductionCompaniesModel(
        id: productionCompanies.id,
        logoPath: productionCompanies.logoPath,
        name: productionCompanies.name,
        originCountry: productionCompanies.originCountry,
      );

  @override
  num? id;
  @override
  String? logoPath;
  @override
  String? name;
  @override
  String? originCountry;

  @override
  ProductionCompaniesModel copyWith({
    num? id,
    String? logoPath,
    String? name,
    String? originCountry,
  }) =>
      ProductionCompaniesModel(
        id: id ?? this.id,
        logoPath: logoPath ?? this.logoPath,
        name: name ?? this.name,
        originCountry: originCountry ?? this.originCountry,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['logo_path'] = logoPath;
    map['name'] = name;
    map['origin_country'] = originCountry;
    return map;
  }
}

class GenresModel extends Genres {
  GenresModel({
    this.id,
    this.name,
  });

  GenresModel.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
  }

  factory GenresModel.fromObject({required Genres genres}) => GenresModel(
        id: genres.id,
        name: genres.name,
      );

  @override
  num? id;
  @override
  String? name;

  @override
  GenresModel copyWith({
    num? id,
    String? name,
  }) =>
      GenresModel(
        id: id ?? this.id,
        name: name ?? this.name,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    return map;
  }
}
