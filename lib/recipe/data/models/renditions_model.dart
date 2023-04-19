


class  Renditions {

  final  String url;
  final String poster_url;
  Renditions( {
    required this.poster_url,
    required this.url,
  });

  factory Renditions.fromJson(Map<String, dynamic> json) {
    return Renditions(
      url: json['url'], poster_url:json['poster_url'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'url': url,
      'poster_url':poster_url
    };
  }
}
