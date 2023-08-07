// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'package:equatable/equatable.dart';

class HomepageEntity extends Equatable {

  final List<Map<String, dynamic>>? resources;


  const HomepageEntity({this.resources});

  @override
  List<Object?> get props => [resources];
  
}