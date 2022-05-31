import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/filme.dart';

class FilmeRepository {
  Future<List<Filme>> findAll() async {
    final filmeResponse =
        await http.get(Uri.parse('http://localhost:3031/filmes'));
    final filmeList = jsonDecode(filmeResponse.body);
    return filmeList.map<Filme>((filmeMap) {
      return Filme.fromMap(filmeMap);
    }).toList();
  }

  Future<Filme> findById(String id) async {
    var url = Uri.parse('http://localhost:3031/filmes/$id');
    final filmeResponse = await http.get(url);
    return Filme.fromJson(filmeResponse.body);
  }

  Future<void> update(Filme filme) async {
    var url = Uri.parse('http://localhost:3031/filmes/${filme.id}');
    await http.put(url, body: filme.toJson(), headers: {
      'content-type': 'application/json',
    });
  }

  Future<void> insert(Filme filme) async {
    var url = Uri.parse('http://localhost:3031/filmes/');
    await http.post(url,
        body: filme.toJson(), headers: {'content-type': 'application/json'});
  }
}
