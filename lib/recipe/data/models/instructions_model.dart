

class Instructions {
  final String display_text;
  final  int position;

  Instructions({
    required this.display_text,
    required this.position,
  });

  factory Instructions.fromJson(Map<String, dynamic> json) {
    return Instructions(
      display_text: json['display_text'],
      position: json['position'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'display_text': display_text,
      'position': position,
    };
  }
}
