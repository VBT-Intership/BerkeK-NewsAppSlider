class News {
  String title;
  String photo;
  String date;

  News(this.title, this.photo, this.date);

  static List<News> createDummyNewsList(){
    List<News> news = new List<News>();
    news.add(new News("Şirketlerde Coronavirus Alarmı", "https://www.cumhuriyet.com.tr/Archive/2020/8/4/1755908/kapak_111315.jpg?v=20200804113142", "8/4/2020"));
    news.add(new News("Yeni Parti İddiası", "https://www.cumhuriyet.com.tr/Archive/2020/8/4/1755868/kapak_080456.jpg?v=20200804080520", "8/4/2020"));
    news.add(new News("", "https://www.cumhuriyet.com.tr/Archive/2020/8/4/1755833/manset_121404.jpg?v=20200804121404", "8/4/2020"));
    news.add(new News("Ülkelere Göre Kadın Cinayetleri", "https://www.cumhuriyet.com.tr/Archive/2020/8/4/1755942/kapak_123044.jpg?v=20200804134617", "8/4/2020"));
    news.add(new News("Şirketlerde Coronavirus Alarmı", "https://www.cumhuriyet.com.tr/Archive/2020/8/4/1755908/kapak_111315.jpg?v=20200804113142", "8/4/2020"));
    news.add(new News("Burası Haber 6", "https://www.cumhuriyet.com.tr/Archive/2020/8/4/1755847/manset_120315.jpg?v=20200804120315", "8/4/2020"));
    news.add(new News("Burası Haber 7", "https://www.cumhuriyet.com.tr/Archive/2020/8/4/1755926/manset_114803.jpg?v=20200804114813", "8/4/2020"));
    news.add(new News("", "https://www.cumhuriyet.com.tr/Archive/2020/8/4/1755833/manset_121404.jpg?v=20200804121404", "8/4/2020"));
    news.add(new News("", "https://www.cumhuriyet.com.tr/Archive/2020/8/4/1755847/manset_120315.jpg?v=20200804120315", "8/4/2020"));
    news.add(new News("Burası Haber 10", "https://www.cumhuriyet.com.tr/Archive/2020/8/4/1755962/kapak_134229.jpg?v=20200804134232", "8/4/2020"));
    return news;
  }

}
