import 'dart:convert';

class GenreIds {
  List<int> ids;
  GenreIds({
    required this.ids,
  });

  //toMap() => é um método que pega um objeto e transforma em Map<String,dynamic>
  Map<String, dynamic> toMap() => {
        ' ids': ids,
      };

  //fromMap() => é um construtor , ele vai pegar um Map e transformar em um objeto
  factory GenreIds.fromMap(Map<String, dynamic> map) =>
      GenreIds(ids: map[['ids']]);

  //toJson() => é um método que retorna uma String do meu objeto
  String toJson() => jsonEncode(toMap());

  //fromJson() => é um método que baseado em uma String json que retorna um objeto
  factory GenreIds.fromJson(String json) => GenreIds.fromMap(jsonDecode(json));
}
