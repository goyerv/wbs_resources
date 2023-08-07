// Copyright (c) 2022 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor








import 'dart:convert';
import 'dart:math';

import 'package:crypto/crypto.dart';

class Hash {

  Future<String> hashInput(String string) {
    final bytes = utf8.encode(string);
    final hash = sha384.convert(bytes).toString().replaceRange(Random().nextInt(10), Random().nextInt(30) + 10, '');
    return Future.value(hash);
  }
  
}