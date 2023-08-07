// Copyright (c) 2022 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor








import 'package:dartz/dartz.dart';

import '../error/errors.dart';

class InputConverter {
  Either<Errors, int> stringToUnsignedInteger(String str) {

    try {
      final integer = int.parse(str);
      if (integer < 0) throw const FormatException();
      return Right(integer);
    
    } on FormatException {
      return const Left(InvalidInputError());
    
    }
  }
}