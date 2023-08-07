// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







part of 'package:goyerv_resources_website/dependency_injections.dart';



Future<void> initHomepage() async {

  // Data sources
  sl.registerLazySingleton<HomepageRemoteDataSource>(() => HomepageRemoteDataSourceImpl(sl(), sl()));

  // Use cases
  sl.registerLazySingleton(() => GetResources(sl()));

  // Repository
  sl.registerLazySingleton<HomepageRepositoryContracts>(() => HomepageRepositoryContractsImpl(sl(), sl()));


  // Bloc
  sl.registerFactory(() => HomepageBloc(sl()));


  // External
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
  sl.registerLazySingleton(() => HttpClient());
  sl.registerLazySingleton(() => InternetConnectionChecker());


}