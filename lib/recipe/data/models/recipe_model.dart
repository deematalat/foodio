



import 'package:foodio/recipe/data/models/renditions_model.dart';
import 'package:foodio/recipe/data/models/sections_model.dart';
import 'package:foodio/recipe/data/models/tags_model.dart';
import 'package:foodio/recipe/data/models/user_ratings_model.dart';

import '../../domain/entities/recipe.dart';
import 'instructions_model.dart';
class RecipeModel extends  Recipe {
     RecipeModel({
       int ? cook_time_minutes,
       bool ? is_one_top,
       required  int id,
       required String name,
       required String description,
       required String thumbnail_url,
       required List<Tags> tags,
       required List<Instructions> instructions,
       required List<Sections> sections,
       required  UserRatings user_ratings,
       required List<Renditions> renditions,
  }) : super(cook_time_minutes,is_one_top,tags:tags, instructions: instructions, user_ratings: user_ratings,
         renditions: renditions, id:id, name:name, description: description, thumbnail_url:thumbnail_url,
        sections: sections
     );


  factory RecipeModel.fromJson(Map<String, dynamic> json) {
    var userRatingsJson = json['user_ratings'];
    UserRatings userRatings = UserRatings(count_positive:0);
    if (userRatingsJson != null) {
      userRatings = UserRatings.fromJson(userRatingsJson);
    }


    var renditionsJson = json['renditions'];
    List<Renditions> renditions = [];
    if (renditionsJson != null) {
      renditions = List<Renditions>.from(renditionsJson.map((rendition) => Renditions.fromJson(rendition)));
    }

    var instructionsJson = json['instructions'];
    List<Instructions> instructions = [];
    if (instructionsJson != null) {
      instructions = List<Instructions>.from(instructionsJson.map((instruction) => Instructions.fromJson(instruction)));
    }

    var tagsJson = json['tags'] ;
    List<Tags> tags = [];
    if (tagsJson != null) {
      tags = List<Tags>.from(tagsJson.map((tag) => Tags.fromJson(tag)));
    }

    var sectionsJson = json['sections'];
    List<Sections> sections = [];
    if (sectionsJson != null) {
      sections = List<Sections>.from(sectionsJson.map((section) => Sections.fromJson(section)));
    }

    return  RecipeModel(
      id: json['id'],
      name: json['name']!,
      description: json['description']!,
      thumbnail_url: json['thumbnail_url']!,
      tags: tags,
      instructions: instructions,
      sections: sections,
      user_ratings:userRatings,
      renditions: renditions,
      is_one_top: json['is_one_top'],
      cook_time_minutes: json['cook_time_minutes'],
    );
  }

  Map<String, dynamic> toJson() {
    var instructionsJson =
    instructions.map((item) => item.toJson()).toList();

    var  tagsJson =
     tags.map((item) => item.toJson()).toList();

    var sectionsJson =
    sections.map((item) => item.toJson()).toList();

    var renditionsJson =
    renditions.map((item) => item.toJson()).toList();


    return {'id': id, 'name':name, 'description':description,
      'thumbnail_url':thumbnail_url,
      'instructions':instructionsJson,
      'tags':tagsJson,
      'user_ratings':user_ratings,
      'sections':sectionsJson,
      'renditions':renditionsJson,
      'is_one_top':is_one_top,
    };
  }
}