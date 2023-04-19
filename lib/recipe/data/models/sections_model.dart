



class  Sections {

  final  List<Components> components;

  Sections({

    required this.components,
  });

  factory Sections.fromJson(Map<String, dynamic> json) {
    var componentsJson = json['components'];
    List<Components> components = [];
    if (componentsJson != null) {
      components =
      List<Components>.from(componentsJson.map((component) => Components.fromJson(component)));
    }

    return Sections(
      components: components,
    );
  }

  Map<String, dynamic> toJson() {
    var componentsJson =
    components.map((item) => item.toJson()).toList();
    return {
      'components': componentsJson,
    };
  }
}

class  Components {

  final  int position;
  final String raw_text;
  Components({
    required this.position,
    required this.raw_text,
  });

  factory Components.fromJson(Map<String, dynamic> json) {
    return Components(
      position: json['position'],
      raw_text:  json['raw_text'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'raw_text': raw_text,
      'position':position
    };
  }
}