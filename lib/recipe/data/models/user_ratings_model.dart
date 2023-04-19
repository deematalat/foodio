

class  UserRatings {

  final  int count_positive;

  UserRatings({

    required this.count_positive,
  });

  factory UserRatings.fromJson(Map<String, dynamic> json) {
    return UserRatings(
      count_positive: json['count_positive'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'count_positive': count_positive,
    };
  }
}
