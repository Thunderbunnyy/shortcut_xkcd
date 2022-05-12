import 'package:flutter/src/widgets/framework.dart';
import 'package:shortcut_xkcd/Model/Comic.dart';
import 'package:shortcut_xkcd/Presenter/presenterInterface.dart';
import 'package:shortcut_xkcd/Repository/comics/comic_repository.dart';

class ComicPresenter extends PresenterInterface {

  ComicsRepository? comicsRepository;
  ComicPresenter({this.comicsRepository});

  Comic? comic;

  @override
  void addFavorite() {
    // TODO: implement addFavorite
  }

  @override
  void explainComic() async {
    comicsRepository?.explainCurrentComic();
  }

  @override
  Future<Comic?> getComicById( String num) async {

    return await comicsRepository?.getComicById(int.parse(num));
  }

  @override
  void getLatestComic() async {
    comic = await comicsRepository?.getLatestComic();
  }

  @override
  void getNext(int number) async {
    comic = await comicsRepository?.getNextComic(number);
  }

  @override
  void getRandomComic() async {
    comic = await comicsRepository?.getRandomComic();
  }

  @override
  void loadFirstComic() async {
    comic = await comicsRepository?.getLatestComic();
  }

  @override
  void shareComic() {
    // TODO: implement shareComic
  }

}