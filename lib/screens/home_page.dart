import 'package:flutter/material.dart';
import 'package:news_slider_app/components/news_slider.dart';
import 'package:news_slider_app/models/News.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<News> news;

  @override
  void initState() {
    super.initState();
    news = News.createDummyNewsList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  _buildAppBar() {
    return AppBar(
      backgroundColor: Color.fromRGBO(231, 76, 60, 1.0),
      title: Text("News Slider"),
      leading: Icon(Icons.menu),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 10),
          child: Icon(Icons.search),
        )
      ],
      centerTitle: true,
    );
  }

  _buildBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        NewsSlider(news),
      ],
    );
  }
}
