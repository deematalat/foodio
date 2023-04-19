

class Tags {
  final String name;
  final  int id;

  Tags({
    required this.name,
    required this.id,
  });

  factory Tags.fromJson(Map<String, dynamic> json) {
    return Tags(
      name: json['name'],
      id: json['id']??0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'id': id,
    };
  }
}
