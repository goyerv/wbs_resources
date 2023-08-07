// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







part of 'homepage_bloc.dart';

abstract class HomepageEvent extends Equatable {
  const HomepageEvent({List props = const <dynamic>[]});
}


class GetResourcesEvent extends HomepageEvent {

  final String? resourceID;

  const GetResourcesEvent(this.resourceID);

  @override 
  List<Object?> get props => [resourceID];
  
}
