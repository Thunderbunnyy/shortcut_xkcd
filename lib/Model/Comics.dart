class Comic {

  int? month ;
  int? num ;
  String? link;
  String? year;
  String? news;
  String? safeTitle;
  String? transcript;
  String? alt;
  String? img;
  String? title;
  String? day;

  Comic({
      this.month,
      this.num,
      this.link,
      this.year,
      this.news,
      this.safeTitle,
      this.transcript,
      this.alt,
      this.img,
      this.title,
      this.day});

  factory Comic.fromJson(Map<String,dynamic> json) {
    return Comic(month: json['month'],
        num: json['num'],
        link: json['link'],
        year: json['year'],
        news: json['news'],
        safeTitle: json['safe_title'],
        transcript: json['transcript'],
        alt: json['alt'],
        img: json['img'],
        title: json['title'],
        day: json['day']);
  }


}