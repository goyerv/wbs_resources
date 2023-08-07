// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import '../../domain/entity/homepage_entity.dart';

class HomepageModel extends HomepageEntity {
  
  const HomepageModel({List<Map<String, dynamic>>? resources}) : super(resources: resources);

  factory HomepageModel.fromJson(Map<String, dynamic> json) {
    return HomepageModel(resources: json['resources']);
  }

}