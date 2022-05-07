import 'package:shortcut_xkcd/Model/Comics.dart';

class Presenter {

  void getComicById(){}

}

class comicPresenter implements Presenter {

  Comic? _comicViewModel;

  comicPresenter() {
    this._comicViewModel = new Comic();
  }

  @override
  void getComicById() {

  }

}