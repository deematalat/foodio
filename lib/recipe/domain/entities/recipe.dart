
import 'package:equatable/equatable.dart';

import '../../data/models/instructions_model.dart';
import '../../data/models/renditions_model.dart';
import '../../data/models/sections_model.dart';
import '../../data/models/tags_model.dart';
import '../../data/models/user_ratings_model.dart';

class Recipe extends Equatable{
    final int id;
   final  String name;
   final String description;
   final String thumbnail_url;
   int ? cook_time_minutes;
   bool ? is_one_top;
   final List<Tags> tags;
    final List<Instructions> instructions;
    final List<Sections> sections;
    UserRatings user_ratings;
    final List<Renditions> renditions;

    Recipe(this.cook_time_minutes,this.is_one_top, {required this.tags, required this.instructions, required this.user_ratings,
      required this.renditions,required this.id, required this.name,
    required this.description, required this.thumbnail_url,
      required this.sections,
    });
  @override
  List<Object?> get props => [id,name,description,thumbnail_url,
    tags,is_one_top,instructions,renditions,user_ratings,sections,
    cook_time_minutes
  ] ;

}