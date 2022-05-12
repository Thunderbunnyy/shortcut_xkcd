import 'package:flutter/material.dart';
import 'package:shortcut_xkcd/Model/Comic.dart';

abstract class PresenterInterface {

  void loadFirstComic();
  void getLatestComic();
  void getNext(int number);
  void getRandomComic();
  Future<Comic?> getComicById( String num);
  //void explainComic();
  void addFavorite();
  void shareComic();
}