import 'package:shortcut_xkcd/Model/Comic.dart';

abstract class ComicsRepository {

  Future<Comic?> getLatestComic();
  Future<Comic?> getComicById(int id);
  void explainCurrentComic();
  Future<Comic?> getRandomComic();
  Future<Comic?> getNextComic(int number);
}