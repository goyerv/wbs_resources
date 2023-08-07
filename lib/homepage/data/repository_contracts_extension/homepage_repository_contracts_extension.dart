// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'package:dartz/dartz.dart';

import '../../../web_core/error/errors.dart';
import '../../../web_core/error/exceptions.dart';
import '../../../web_core/platform/network.dart';
import '../../domain/entity/homepage_entity.dart';
import '../../domain/repository_contracts/homepage_repository_contracts.dart';
import '../data_sources/remote/homepage_remote_data_source.dart';
import '../models/homepage_model.dart';


typedef getHomepageData = Future<HomepageModel> Function();

class HomepageRepositoryContractsImpl implements HomepageRepositoryContracts {

  final HomepageRemoteDataSource remoteDataSource;
  final Network network;

  HomepageRepositoryContractsImpl(this.remoteDataSource, this.network);


  @override
  Future<Either<Errors, HomepageEntity>> getResources(String? resourceID) async {
    return await _getHomepageData(() => remoteDataSource.getResources(resourceID));
  }



  Future<Either<Errors, HomepageEntity>> _getHomepageData(getHomepageData getHomepageData) async {

    if (await network.isConnected) {
      try {
        final remoteHomepageData  = await getHomepageData();
        return Right(remoteHomepageData );

      } on ServerException {
        return const Left(ServerError());
      
      }
    } else {
      return const Left(NetWorkError());
    
    }

  }
  
  
  

}