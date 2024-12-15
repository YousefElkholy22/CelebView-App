class FamousPerson {
    int? page;
    List<Results>? results;
    int? totalPages;
    int? totalResults;

    FamousPerson({this.page, this.results, this.totalPages, this.totalResults});

    FamousPerson.fromJson(Map<String, dynamic> json) {
        page = json["page"];
        results = json["results"] == null ? null : (json["results"] as List).map((e) => Results.fromJson(e)).toList();
        totalPages = json["total_pages"];
        totalResults = json["total_results"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = <String, dynamic>{};
        data["page"] = page;
        if(results != null) {
            data["results"] = results?.map((e) => e.toJson()).toList();
        }
        data["total_pages"] = totalPages;
        data["total_results"] = totalResults;
        return data;
    }
}

class Results {
    bool? adult;
    int? gender;
    int? id;
    String? knownForDepartment;
    String? name;
    String? originalName;
    double? popularity;
    String? profilePath;
    List<KnownFor>? knownFor;

    Results({this.adult, this.gender, this.id, this.knownForDepartment, this.name, this.originalName, this.popularity, this.profilePath, this.knownFor});

    Results.fromJson(Map<String, dynamic> json) {
        adult = json["adult"];
        gender = json["gender"];
        id = json["id"];
        knownForDepartment = json["known_for_department"];
        name = json["name"];
        originalName = json["original_name"];
        popularity = json["popularity"];
        profilePath = json["profile_path"];
        knownFor = json["known_for"] == null ? null : (json["known_for"] as List).map((e) => KnownFor.fromJson(e)).toList();
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = <String, dynamic>{};
        data["adult"] = adult;
        data["gender"] = gender;
        data["id"] = id;
        data["known_for_department"] = knownForDepartment;
        data["name"] = name;
        data["original_name"] = originalName;
        data["popularity"] = popularity;
        data["profile_path"] = profilePath;
        if(knownFor != null) {
            data["known_for"] = knownFor?.map((e) => e.toJson()).toList();
        }
        return data;
    }
}

class KnownFor {
    String? backdropPath;
    int? id;
    String? title;
    String? originalTitle;
    String? overview;
    String? posterPath;
    String? mediaType;
    bool? adult;
    String? originalLanguage;
    List<int>? genreIds;
    double? popularity;
    String? releaseDate;
    bool? video;
    double? voteAverage;
    int? voteCount;

    KnownFor({this.backdropPath, this.id, this.title, this.originalTitle, this.overview, this.posterPath, this.mediaType, this.adult, this.originalLanguage, this.genreIds, this.popularity, this.releaseDate, this.video, this.voteAverage, this.voteCount});

    KnownFor.fromJson(Map<String, dynamic> json) {
        backdropPath = json["backdrop_path"];
        id = json["id"];
        title = json["title"];
        originalTitle = json["original_title"];
        overview = json["overview"];
        posterPath = json["poster_path"];
        mediaType = json["media_type"];
        adult = json["adult"];
        originalLanguage = json["original_language"];
        genreIds = json["genre_ids"] == null ? null : List<int>.from(json["genre_ids"]);
        popularity = json["popularity"];
        releaseDate = json["release_date"];
        video = json["video"];
        voteAverage = json["vote_average"];
        voteCount = json["vote_count"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = <String, dynamic>{};
        data["backdrop_path"] = backdropPath;
        data["id"] = id;
        data["title"] = title;
        data["original_title"] = originalTitle;
        data["overview"] = overview;
        data["poster_path"] = posterPath;
        data["media_type"] = mediaType;
        data["adult"] = adult;
        data["original_language"] = originalLanguage;
        if(genreIds != null) {
            data["genre_ids"] = genreIds;
        }
        data["popularity"] = popularity;
        data["release_date"] = releaseDate;
        data["video"] = video;
        data["vote_average"] = voteAverage;
        data["vote_count"] = voteCount;
        return data;
    }
}