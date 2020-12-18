class DataCourse {
  int id;
  String title;
  String url;
  String timeIn;

  DataCourse({this.id, this.title, this.url, this.timeIn});

  DataCourse.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    url = json['url'];
    timeIn = json['time-in'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['url'] = this.url;
    data['time-in'] = this.timeIn;
    return data;
  }
}
