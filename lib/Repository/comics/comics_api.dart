import 'dart:convert';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:shortcut_xkcd/Model/Comic.dart';
import 'package:shortcut_xkcd/Repository/comics/comic_repository.dart';
import 'package:http/http.dart' as http;

class ComicsApi extends ComicsRepository{

  static final baseUrl = 'https://www.xkcd.com/';
  static final _baseApiUrl = 'https://www.xkcd.com/info.0.json';
  static final _subApiUrl = 'https://www.xkcd.com/{0}/info.0.json';
  static final _explainXkcdUrl = 'https://www.explainxkcd.com/wiki/index.php/';

  int _latestComicNum = -1;
  int _currentComicNum = -1;

  @override
  Future<Comic?> getLatestComic() async {

    final response = await http.get(Uri.parse(_baseApiUrl));
    if (response.statusCode == 200) {
      var comic = Comic.fromJson(json.decode(response.body));
      if (_latestComicNum < 0) {
        _latestComicNum = comic.num!;
      }
      _currentComicNum = _latestComicNum;
      print('kelma');
      print(comic.toString());
      return comic;

    } else {
      debugPrint('${response.statusCode}: ${response.toString()}');
    }
    return null;

  }

  @override
  Future<Comic> explainCurrentComic() {
    // TODO: implement explainCurrentComic
    throw UnimplementedError();
  }

  @override
  Future<Comic> fetchLatestComic() {
    // TODO: implement fetchLatestComic
    throw UnimplementedError();
  }

  @override
  Future<Comic> getComicById(int id) {
    // TODO: implement getComicById
    throw UnimplementedError();
  }

  

  

}