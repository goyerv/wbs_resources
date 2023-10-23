// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor






import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

// import 'dependency_injections.dart';
// import 'homepage/presentation/bloc/homepage_bloc.dart';
import 'homepage/presentation/states/homepage.dart';
import 'web_core/internationalization/app_localizations.dart';
import 'web_core/internationalization/locales_preferences.dart';
import 'web_core/themes/dark/theme_dark.dart';
import 'web_core/themes/light/theme_light.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class GoyervResources extends StatefulWidget {

  const GoyervResources({Key? key}) : super(key: key);

  @override
  State<GoyervResources> createState() => _GoyervResourcesState();

}

class _GoyervResourcesState extends State<GoyervResources> {

  late LocalesPreferencesImpl localesPreferences;

  @override 
  void initState() {
    localesPreferences = LocalesPreferencesImpl(SharedPreferences.getInstance());
    super.initState(); 
  }

  // I updated google font package
  // I updated http package
  // I added universal_io package (only do this for web based applications)
  // I removed the color parameter from the AppBarTheme() in themes. I had to choose between backgroundColor and Color as they were same thing
  // I made a few changes to locales_preferences.dart. Just copy and paste
  // Future<void> initState() async {} is illegal. Should be the original thing.
  // Copy and paste the code in web_desktop darkTheme to here and everywhere.



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      // locale: const Locale('en', 'US'),
      // locale: Locale('${localesPreferences.getPlatformLocale().then((value) => value.first)}', '${localesPreferences.getPlatformLocale().then((value) => value.elementAt(1) == ''? null : value.elementAt(1))}'),
      supportedLocales: const [
        Locale('en', 'US'),
        Locale('ar', null),
        Locale('bn', null),
        Locale('bg', null),
        Locale('my', null),
        Locale('ceb', null),
        Locale('zh', 'CN'),
        Locale('zh', 'TW'),
        Locale('hr', null),
        Locale('cs', null),
        Locale('da', null),
        Locale('nl', null),
        Locale('en', 'AU'),
        Locale('en', 'BZ'),
        Locale('en', 'CA'),
        Locale('en', 'CB'),
        Locale('en', 'GB'),
        Locale('en', 'IN'),
        Locale('en', 'IE'),
        Locale('en', 'JM'),
        Locale('en', 'NZ'),
        Locale('en', 'PH'),
        Locale('en', 'ZA'),
        Locale('en', 'TT'),
        Locale('et', null),
        Locale('fil', null),
        Locale('fi', null),
        Locale('fr', 'BE'),
        Locale('fr', 'FR'),
        Locale('fr', 'LU'),
        Locale('fr', 'CH'),
        Locale('ka', null),
        Locale('de', 'AT'),
        Locale('de', 'DE'),
        Locale('de', 'LI'),
        Locale('de', 'LU'),
        Locale('de', 'CH'),
        Locale('el', null),
        Locale('gu', null),
        Locale('ha', 'NG'),
        Locale('hi', null),
        Locale('hu', null),
        Locale('ig', 'NG'),
        Locale('id', null),
        Locale('it', 'IT'),
        Locale('it', 'CH'),
        Locale('ja', null),
        Locale('kn', null),
        Locale('km', null),
        Locale('ko', null),
        Locale('ms', 'MY'),
        Locale('ml', null),
        Locale('mr'),
        Locale('nb', 'NO'),
        Locale('nn', 'NO'),
        Locale('or', null),
        Locale('pl', null),
        Locale('pt', 'BR'),
        Locale('pt', 'PT'),
        Locale('pa', null),
        Locale('ro', 'MO'),
        Locale('ru', 'MO'),
        Locale('es', 'AR'),
        Locale('es', 'BO'),
        Locale('es', 'CI'),
        Locale('es', 'CO'),
        Locale('es', 'CR'),
        Locale('es', 'DO'),
        Locale('es', 'EC'),
        Locale('es', 'SV'),
        Locale('es', 'GT'),
        Locale('es', 'HN'),
        Locale('es', 'MX'),
        Locale('es', 'NI'),
        Locale('es', 'PA'),
        Locale('es', 'PY'),
        Locale('es', 'PE'),
        Locale('es', 'PR'),
        Locale('es', 'ES'),
        Locale('es', 'UY'),
        Locale('es', 'VE'),
        Locale('ta', null),
        Locale('th', null),
        Locale('tr', null),
        Locale('uk', null),
        Locale('vi', null),
        Locale('cy', null),
        Locale('yr', 'NG')
      ],
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      localeResolutionCallback: (locale, supportedLocales) {
        for (var supportedLocale in supportedLocales) {
          if (supportedLocale.languageCode == locale!.languageCode && supportedLocale.countryCode == locale.countryCode)  {
            return supportedLocale;
          }
        }
        return supportedLocales.first;
      },
      home: const Homepage(),
      // home: BlocProvider(
        // create: ((context) => sl<HomepageBloc>()),
        // child: const Homepage(),
      // ),
    );
  }

}
