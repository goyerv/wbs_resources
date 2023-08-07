// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../web_core/error/errors.dart';
import '../../../web_core/use_cases/use_cases.dart';
import '../entity/homepage_entity.dart';
import '../repository_contracts/homepage_repository_contracts.dart';





class GetResources extends UseCases<HomepageEntity, Parameters> {

  final HomepageRepositoryContracts repositoryContracts;

  GetResources(this.repositoryContracts);

  @override
  Future<Either<Errors, HomepageEntity>> get(Parameters parameters) async {
    return await repositoryContracts.getResources(parameters.resourceID);
  }

  @override 
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);

}







class Parameters extends Equatable {

  final String? resourceID;

  const Parameters({this.resourceID});

  @override 
  List<Object?> get props => [resourceID];
  
}