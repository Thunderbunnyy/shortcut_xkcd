import 'package:flutter/material.dart';
import 'package:shortcut_xkcd/Presenter/comicPresenter.dart';

class ComicsView extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<ComicsView> {

  late ComicPresenter comicPresenter;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        actions: <Widget>[
          new IconButton(
              icon: Icon(Icons.search_sharp),
              onPressed: () {

              }),
        ],
      ),
      body: Column(

      ),
    );
  }
}
