import 'package:flutter/material.dart';
import 'package:news_slider_app/models/News.dart';

class NewsSlider extends StatefulWidget {
  List<News> news;
  NewsSlider(this.news);

  @override
  _NewsSliderState createState() => _NewsSliderState();
}

class _NewsSliderState extends State<NewsSlider> {
  PageController pageController = PageController();

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 275,
      child: Column(
        children: [
          SizedBox(
            height: 214,
            child: PageView.builder(
              controller: pageController,
              onPageChanged: (value) {
                setState(() {
                  selectedIndex = value;
                });
              },
              itemCount: widget.news.length,
              itemBuilder: (context, index) {
                return _newsCard(
                    widget.news[index].title, widget.news[index].date, widget.news[index].photo);
              },
            ),
          ),
          SizedBox(
            height: 30,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) {
                return _createNumber(index);
              },
            ),
          ),
        ],
      ),
    );
  }

  _newsCard(String title, String date, String photo) {
    return SizedBox(
      height: 250,
      child: Column(
        children: [
          Container(
            color: Colors.red,
            child: Stack(
              children: [
                Image.network(
                  "$photo",
                  fit: BoxFit.fill,
                  width: 400,
                ),
                Positioned(
                  bottom: 0,
                  left: 10,
                  child: title.length > 0 ? Text(" $title ",
                      style: TextStyle(
                        fontSize: 21,
                        backgroundColor: Colors.grey.withOpacity(0.8),
                      )) : SizedBox(),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  _createNumber(int index) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
          changePage(index);
        },
        child: Container(
          height: 30,
          width: 36,
          color: selectedIndex == index ? Colors.black : Colors.red,
          child: Center(
            child: Text(
              "${index + 1}",
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
          ),
        ),
      ),
    );
  }

  void changePage(int index) {
    pageController.jumpToPage(index);
  }
}
