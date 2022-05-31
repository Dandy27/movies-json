// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

class Filme {
  bool adult;
  String backdrop_path;
  List<int> genre_ids;
  String id;
  String original_language;
  String overview;
  double popularity;
  String poster_path;
  String realese_date;
  String title;
  bool video;
  double vote_average;
  int count;
  Filme({
    required this.adult,
    required this.backdrop_path,
    required this.genre_ids,
    required this.id,
    required this.original_language,
    required this.overview,
    required this.popularity,
    required this.poster_path,
    required this.realese_date,
    required this.title,
    required this.video,
    required this.vote_average,
    required this.count,
  });

  //toMap() => é um método que pega um objeto e transforma em um Map<String,dynamic>
  Map<String, dynamic> toMap() => {
        'adult': adult,
        'backdrop_path': backdrop_path,
        'genre_ids': genre_ids,
        'id': id,
        'original_language': original_language,
        'overview': overview,
        'popularity': popularity,
        'poster_path': poster_path,
        'realese_date': realese_date,
        'title': title,
        'video': video,
        'vote_average': vote_average,
        'count': count
      };

  //fromMap() => é um construtor, ele vai pegar um Map e transformar em um objeto(Filme)
  factory Filme.fromMap(Map<String, dynamic> map) => Filme(
      adult: map['adult'] ?? false,
      backdrop_path: map['backdrop_path'] ?? '',
      genre_ids: map['genre_ids'].cast<int>(),
      id: map['id'] ?? '',
      original_language: map['original_language'] ?? '',
      overview: map['overview'] ?? '',
      popularity: map['popularity']?.toDouble() ?? 0.0,
      poster_path: map['poster_path'] ?? '',
      realese_date: map['realese_date'] ?? '',
      title: map['title'] ?? '',
      video: map['video'] ?? '',
      vote_average: map['vote_average']?.toDouble() ?? 0.0,
      count: map['count']?.toInt() ?? 0);

  //toJson() => é um método que retorna uma String do meu Objeto(Filme)
  String toJson() => jsonEncode(toMap());

  //fromJson() => é um método que baseado em uma Sring json que retorna um Objeto(Filme)
  factory Filme.fromJson(String json) => Filme.fromMap(jsonDecode(json));

  @override
  String toString() {
    return 'Filme(adult: $adult, backdrop_path: $backdrop_path, genre_ids: $genre_ids, id: $id, original_language: $original_language, overview: $overview, popularity: $popularity, poster_path: $poster_path, realese_date: $realese_date, title: $title, video: $video, vote_average: $vote_average, count: $count)';
  }
}
