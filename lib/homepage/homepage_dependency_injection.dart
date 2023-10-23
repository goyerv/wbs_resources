// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







part of 'package:goyerv_resources_website/dependency_injections.dart';



Future<void> initHomepage() async {

  // External
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerSingleton(sharedPreferences);
  // sl.registerSingleton(HttpClient());
  // sl.registerSingleton(InternetConnectionChecker());


  // sl.registerLazySingleton<HomepageRepositoryContracts>(() => HomepageRepositoryContractsImpl());

  // Data sources
  // sl.registerLazySingleton<HomepageRemoteDataSource>(() => HomepageRemoteDataSourceImpl());

  // Use cases
  // sl.registerFactory<GetResources>(() => GetResources(sl()));
  // sl.registerSingleton<GetResources>(GetResources(sl()));
  
  // Bloc
  // sl.registerSingleton<HomepageBloc>(HomepageBloc(sl()));


}