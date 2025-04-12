// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor






import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'homepage/presentation/resources/2025/best_practices.dart';
import 'homepage/presentation/resources/2025/building_a_personal_brand.dart';
import 'homepage/presentation/resources/2025/contraband.dart';
import 'homepage/presentation/resources/2025/customs_declaration.dart';
import 'homepage/presentation/resources/2025/packaging.dart';
import 'homepage/presentation/resources/2025/personal_protection.dart';
import 'homepage/presentation/resources/2025/prohibited_requests.dart';
import 'homepage/presentation/resources/2025/reviews_and_ratings.dart';
import 'homepage/presentation/resources/2025/things_you_should_know_as_a_runner.dart';
import 'homepage/presentation/resources/2025/unfinished_requests.dart';
import 'homepage/presentation/states/homepage.dart';
import 'web_core/themes/dark/theme_dark.dart';
import 'web_core/themes/light/theme_light.dart';



class GoyervResources extends StatefulWidget {

  const GoyervResources({Key? key}) : super(key: key);

  @override
  State<GoyervResources> createState() => _GoyervResourcesState();

}

class _GoyervResourcesState extends State<GoyervResources> {



  late final GoRouter router;
  late GlobalKey<NavigatorState> navigatorKey;


  @override 
  void initState() {
    navigatorKey = GlobalKey<NavigatorState>();
    initializeRouter();
    super.initState();
  }




  void initializeRouter() {
    router = GoRouter(
      initialLocation: '/',
      navigatorKey: navigatorKey,
      redirect: (context, state) {
        final path = state.uri.path;

        if (path.endsWith('.html')) {
          final newPath = path.replaceAll('.html', '');
          return newPath;
        }

        return null;
      },
      routes: [
    
        GoRoute(
          path: '/',
          builder: (context, state) => const Homepage()
        ),
  
        GoRoute(
          path: '/2025/:path',
          builder: (context, state) {
            if(state.pathParameters['path'] == "best-practices") {
              return const BestPractices();
            }

            return const Homepage();
          }
        ),
      
  
        GoRoute(
          path: '/2025/:path',
          builder: (context, state) {
            if(state.pathParameters['path'] == "building-a-personal-brand") {
              return const BuildingAPersonalBrand();
            }

            return const Homepage();
          }
        ),
    
      
        GoRoute(
          path: '/2025/:path',
          builder: (context, state) {
            if(state.pathParameters['path'] == "contrabands") {
              return const Contraband();
            }

            return const Homepage();
          }
        ),
      
        GoRoute(
          path: '/2025/:path',
          builder: (context, state) {
            if(state.pathParameters['path'] == "customs-declaration") {
              return const CustomsDeclaration();
            }

            return const Homepage();
          }
        ),
      
        GoRoute(
          path: '/2025/:path',
          builder: (context, state) {
            if(state.pathParameters['path'] == "packaging") {
              return const Packaging();
            }

            return const Homepage();
          }
        ),
      
        GoRoute(
          path: '/2025/:path',
          builder: (context, state) {
            if(state.pathParameters['path'] == "personal-protection-during-runs") {
              return const PersonalProtectionDuringRuns();
            }

            return const Homepage();
          }
        ),
      
        GoRoute(
          path: '/2025/:path',
          builder: (context, state) {
            if(state.pathParameters['path'] == "prohibited-requests") {
              return const ProhibitedRequests();
            }

            return const Homepage();
          }
        ),
      
        GoRoute(
          path: '/2025/:path',
          builder: (context, state) {
            if(state.pathParameters['path'] == "reviews-and-ratings") {
              return const ReviewsAndRatings();
            }

            return const Homepage();
          }
        ),
      
        GoRoute(
          path: '/2025/:path',
          builder: (context, state) {
            if(state.pathParameters['path'] == "things-you-should-know-as-a-runner") {
              return const ThingsYouShouldKnowAsARunner();
            }

            return const Homepage();
          }
        ),
      
        GoRoute(
          path: '/2025/:path',
          builder: (context, state) {
            if(state.pathParameters['path'] == "handling-uncompleted-requests") {
              return const UnfinishedRequests();
            }

            return const Homepage();
          }
        ),
      
    
      ]
    );
  
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
    );
  }

}
