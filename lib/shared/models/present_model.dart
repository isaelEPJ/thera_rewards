class PresentModel {
  int? id;
  String? title;
  String? content;
  String? imageUrl;
  String? route;

  PresentModel(
      {required this.id,
      required this.title,
      required this.content,
      required this.imageUrl,
      required this.route});

  // PresentModel.fromJson(Map<String, dynamic> json) {
  //   id = json['id'];
  //   title = json['title'];
  //   content = json['content'];
  //   imageUrl = json['imageUrl'];
  //   route = json['route'];
  // }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['id'] = this.id;
  //   data['title'] = this.title;
  //   data['content'] = this.content;
  //   data['imageUrl'] = this.imageUrl;
  //   data['route'] = this.route;
  //   return data;
  // }
}
