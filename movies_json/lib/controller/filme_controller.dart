import 'dart:ffi';

import 'package:movies_json/models/filme.dart';
import 'package:movies_json/repositories/filme_repository.dart';

class FilmeController {
  final _filmeRepository = FilmeRepository();
  Future<void> findAll() async {
    final filme = await _filmeRepository.findAll();
    filme.forEach(print);
  }

  Future<void> findById(String id) async {
    final filme = await _filmeRepository.findById(id);
    print(filme.title);
  }

  Future<void> update() async {
    final filme = await _filmeRepository.findById('634649');
    filme.genre_ids.add(27);
    filme.genre_ids.add(333333);
    await _filmeRepository.update(filme);
    final filmeAlterado = await _filmeRepository.findById('634649');
    print(filmeAlterado.title);
    print(filmeAlterado.genre_ids);
  }

  Future<void> insert() async {
    final filme = Filme(
        adult: true,
        backdrop_path: 'Lambida',
        genre_ids: [27, 27, 27],
        id: '272727',
        original_language: 'português',
        overview: 'váias vezes',
        popularity: 27.27,
        poster_path: 'varias vezes',
        realese_date: '27-03-2022',
        title: 'Ironmam',
        video: false,
        vote_average: 10.00,
        count: 7);
    _filmeRepository.insert(filme);
  }
}
