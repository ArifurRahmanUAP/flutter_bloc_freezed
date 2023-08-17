
class MovieDetails {
  MovieDetails({
    this.adult,
    this.backdropPath,
    this.belongsToCollection,
    this.budget,
    this.genres,
    this.homepage,
    this.id,
    this.imdbId,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.popularity,
    this.posterPath,
    this.productionCompanies,
    this.productionCountries,
    this.releaseDate,
    this.revenue,
    this.runtime,
    this.spokenLanguages,
    this.status,
    this.tagline,
    this.title,
    this.video,
    this.voteAverage,
    this.voteCount,
  });

  bool? adult;
  String? backdropPath;
  dynamic belongsToCollection;
  num? budget;
  List<Genres>? genres;
  String? homepage;
  num? id;
  String? imdbId;
  String? originalLanguage;
  String? originalTitle;
  String? overview;
  num? popularity;
  String? posterPath;
  List<ProductionCompanies>? productionCompanies;
  List<ProductionCountries>? productionCountries;
  String? releaseDate;
  num? revenue;
  num? runtime;
  List<SpokenLanguages>? spokenLanguages;
  String? status;
  String? tagline;
  String? title;
  bool? video;
  num? voteAverage;
  num? voteCount;

  MovieDetails copyWith({
    bool? adult,
    String? backdropPath,
    dynamic belongsToCollection,
    num? budget,
    List<Genres>? genres,
    String? homepage,
    num? id,
    String? imdbId,
    String? originalLanguage,
    String? originalTitle,
    String? overview,
    num? popularity,
    String? posterPath,
    List<ProductionCompanies>? productionCompanies,
    List<ProductionCountries>? productionCountries,
    String? releaseDate,
    num? revenue,
    num? runtime,
    List<SpokenLanguages>? spokenLanguages,
    String? status,
    String? tagline,
    String? title,
    bool? video,
    num? voteAverage,
    num? voteCount,
  }) =>
      MovieDetails(
        adult: adult ?? this.adult,
        backdropPath: backdropPath ?? this.backdropPath,
        belongsToCollection: belongsToCollection ?? this.belongsToCollection,
        budget: budget ?? this.budget,
        genres: genres ?? this.genres,
        homepage: homepage ?? this.homepage,
        id: id ?? this.id,
        imdbId: imdbId ?? this.imdbId,
        originalLanguage: originalLanguage ?? this.originalLanguage,
        originalTitle: originalTitle ?? this.originalTitle,
        overview: overview ?? this.overview,
        popularity: popularity ?? this.popularity,
        posterPath: posterPath ?? this.posterPath,
        productionCompanies: productionCompanies ?? this.productionCompanies,
        productionCountries: productionCountries ?? this.productionCountries,
        releaseDate: releaseDate ?? this.releaseDate,
        revenue: revenue ?? this.revenue,
        runtime: runtime ?? this.runtime,
        spokenLanguages: spokenLanguages ?? this.spokenLanguages,
        status: status ?? this.status,
        tagline: tagline ?? this.tagline,
        title: title ?? this.title,
        video: video ?? this.video,
        voteAverage: voteAverage ?? this.voteAverage,
        voteCount: voteCount ?? this.voteCount,
      );
}

class SpokenLanguages {
  SpokenLanguages({
    this.englishName,
    this.iso6391,
    this.name,
  });

  String? englishName;
  String? iso6391;
  String? name;

  SpokenLanguages copyWith({
    String? englishName,
    String? iso6391,
    String? name,
  }) =>
      SpokenLanguages(
        englishName: englishName ?? this.englishName,
        iso6391: iso6391 ?? this.iso6391,
        name: name ?? this.name,
      );
}

class ProductionCountries {
  ProductionCountries({
    this.iso31661,
    this.name,
  });

  String? iso31661;
  String? name;

  ProductionCountries copyWith({
    String? iso31661,
    String? name,
  }) =>
      ProductionCountries(
        iso31661: iso31661 ?? this.iso31661,
        name: name ?? this.name,
      );
}

class ProductionCompanies {
  ProductionCompanies({
    this.id,
    this.logoPath,
    this.name,
    this.originCountry,
  });

  num? id;
  String? logoPath;
  String? name;
  String? originCountry;

  ProductionCompanies copyWith({
    num? id,
    String? logoPath,
    String? name,
    String? originCountry,
  }) =>
      ProductionCompanies(
        id: id ?? this.id,
        logoPath: logoPath ?? this.logoPath,
        name: name ?? this.name,
        originCountry: originCountry ?? this.originCountry,
      );
}

class Genres {
  Genres({
    this.id,
    this.name,
  });

  num? id;
  String? name;

  Genres copyWith({
    num? id,
    String? name,
  }) =>
      Genres(
        id: id ?? this.id,
        name: name ?? this.name,
      );
}
