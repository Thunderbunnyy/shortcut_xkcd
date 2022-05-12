import 'package:flutter/material.dart';
import 'package:shortcut_xkcd/Repository/comics/comics_api.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    ComicsApi().getLatestComic();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(


    );
  }
}
