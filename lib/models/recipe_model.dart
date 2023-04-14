


import 'package:flutter/material.dart';

import '../../../core/utils/color_constant.dart';
import '../../../widgets/custom_tags_button.dart';

class Recipe {
  final int id;
  final String name;
  final String thumbnailUrl;
  final String description;
  final int  cook_time_minutes;
  final Map<String, int> tags;

  const Recipe({
    required this.tags,
    required this.cook_time_minutes,
    required this.id,
    required this.name,
    required this.thumbnailUrl,
    required this.description,
  });
  List<CustomTagsButton> getGenresList(BuildContext context) {
    List<CustomTagsButton> temp = [];
    tags.forEach((genre, genreId) {
      temp.add(
        CustomTagsButton(
          onPressed:(){},
          padding: EdgeInsets.symmetric(horizontal: 2),
          color:ColorConstant.gray200,
          text: genre,
        ),
      );
    });

    return temp;
  }
  factory  Recipe.fromJson(Map<String, dynamic> json) {
    return  Recipe(
      tags:json['tags'],
      cook_time_minutes: json['cook_time_minutes'],
      id:json['id'],
      name:json['name'],
      thumbnailUrl:json['thumbnailUrl'],
      description: json['description'],
    );
  }
}
