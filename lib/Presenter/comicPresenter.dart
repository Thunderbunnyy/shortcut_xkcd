import 'package:shortcut_xkcd/Model/Comic.dart';
import 'package:shortcut_xkcd/Presenter/presenterInterface.dart';
import 'package:shortcut_xkcd/Repository/comics/comic_repository.dart';
import 'package:shortcut_xkcd/Repository/comics/comics_api.dart';

class ComicPresenter extends PresenterInterface {

  ComicsApi? comicsApi;
  ComicPresenter({this.comicsApi});

  Comic? comic;

  @override
  void addFavorite() {
    // TODO: implement addFavorite
  }

  // @override
  // void explainComic() async {
  //   comicsApi?.explainCurrentComic();
  // }

  @override
  Future<Comic?> getComicById( String num) async {

    return await comicsApi?.getComicById(int.parse(num));
  }

  @override
  void getLatestComic() async {
    comic = await comicsApi?.getLatestComic();

  }

  @override
  void getNext(int number) async {
    comic = await comicsApi?.getNextComic(number);
  }

  @override
  void getRandomComic() async {
    comic = await comicsApi?.getRandomComic();
  }

  @override
  void loadFirstComic() async {
    comic = await comicsApi?.getLatestComic();
  }

  @override
  void shareComic() {
    // TODO: implement shareComic
  }

}