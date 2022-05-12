import 'dart:convert';
import 'dart:developer';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_browser/flutter_web_browser.dart';
import 'package:shortcut_xkcd/Model/Comic.dart';
import 'package:shortcut_xkcd/Repository/comics/comic_repository.dart';
import 'package:http/http.dart' as http;

class ComicsApi extends ComicsRepository{

  static final baseUrl = 'https://www.xkcd.com/';
  static final _baseApiUrl = 'https://www.xkcd.com/info.0.json';
  static final _subApiUrl = 'https://www.xkcd.com/{0}/info.0.json';
  static final _explainXkcdUrl = 'https://www.explainxkcd.com/wiki/index.php/';

  int _latestComicNum = -1;
  int? _currentComicNum = -1;

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
    void explainCurrentComic() async {
    final String explainUrl = _explainXkcdUrl + _currentComicNum.toString();

      return await FlutterWebBrowser.openWebPage(url: explainUrl);

  }

  @override
  Future<Comic?> getComicById(int id) async {

    String comicUrl = _subApiUrl.replaceAll('{0}', id.toString());

    final response = await http.get(Uri.parse(comicUrl));
    if (response.statusCode == 200) {
      var comic = Comic.fromJson(json.decode(response.body));
      _currentComicNum = id;
      return comic;
    } else {
      debugPrint('${response.statusCode}: ${response.toString()}');
    }
      return null;
  }

  @override
  Future<Comic?> getNextComic(int number) async{
    var nextComicNum = _currentComicNum! + number;
    nextComicNum = nextComicNum > _latestComicNum ? _latestComicNum : nextComicNum;

    if (nextComicNum > 0) {
      String nextComicUrl = _subApiUrl.replaceAll('{0}', nextComicNum.toString());

      final response = await http.get(Uri.parse(nextComicUrl));
      if (response.statusCode == 200) {
        var comic = Comic.fromJson(json.decode(response.body));
        _currentComicNum = nextComicNum;
        return comic;
      } else {
        debugPrint('${response.statusCode}: ${response.toString()}');
      }
    }
    return getRandomComic();
  }

  @override
  Future<Comic?> getRandomComic() async{
    if (_latestComicNum > 0) {
      final randomNumber = Random().nextInt(_latestComicNum);

      String randomUrl = _subApiUrl.replaceAll('{0}', randomNumber.toString());

      final response = await http.get(Uri.parse(randomUrl));
      if (response.statusCode == 200) {
        var comic = Comic.fromJson(json.decode(response.body));
        _currentComicNum = comic.num;
        return comic;
      } else {
        debugPrint('${response.statusCode}: ${response.toString()}');
      }
    }
    return getLatestComic();
  }

  

  

}