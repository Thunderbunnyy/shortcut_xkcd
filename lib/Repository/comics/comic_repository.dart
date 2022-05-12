import 'package:shortcut_xkcd/Model/Comic.dart';

abstract class ComicsRepository {

  Future<Comic?> getLatestComic();
  Future<Comic> getComicById(int id);
  Future<Comic> fetchLatestComic();
  Future<Comic> explainCurrentComic();

}