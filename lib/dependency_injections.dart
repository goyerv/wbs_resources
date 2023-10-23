// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







// import 'dart:io';

import 'package:get_it/get_it.dart';
// import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';

// import 'homepage/data/data_sources/remote/homepage_remote_data_source.dart';
// import 'homepage/data/repository_contracts_extension/homepage_repository_contracts_extension.dart';
// import 'homepage/domain/repository_contracts/homepage_repository_contracts.dart';
// import 'homepage/domain/use_cases/homepage_use_cases.dart';
// import 'homepage/presentation/bloc/homepage_bloc.dart';


part 'homepage/homepage_dependency_injection.dart';









final sl = GetIt.instance;

Future<void> init() async {
  await initHomepage();
}