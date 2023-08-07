// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'package:dartz/dartz.dart';

import '../../../web_core/error/errors.dart';
import '../entity/homepage_entity.dart';

abstract class HomepageRepositoryContracts {
  Future<Either<Errors, HomepageEntity>> getResources(String? resourceID);
}