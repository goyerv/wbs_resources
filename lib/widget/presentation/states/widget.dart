// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../goyerv/presentation/states/languages_state.dart';
import '../../../homepage/presentation/states/homepage.dart';
import '../../../web_core/global_fields/fields.dart';
import '../../../web_core/internationalization/app_localizations.dart';
import '../../../web_core/internationalization/locales_preferences.dart';





PreferredSizeWidget? appBar(BuildContext context, void Function(void Function() n) setState) {

  return AppBar(
    leading: InkWell(onTap: () => launchUrl(Uri.parse('https://www.goyerv.com')), child: Image.asset('images/goyerv_logo.png', fit: BoxFit.scaleDown, filterQuality: FilterQuality.high, semanticLabel: AppLocalizations.of(context).translate('Goyerv logo'), matchTextDirection: false)),
    // title: Text(AppLocalizations.of(context).translate('Community'), style: Theme.of(context).textTheme.titleLarge),
    title: TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const Homepage())), child: Text(AppLocalizations.of(context).translate('Resources'), style: Theme.of(context).textTheme.titleLarge)),
    flexibleSpace: ClipRect(child: BackdropFilter(filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0), child: Container(color: transparent))),
  );
  
}


footer(BuildContext context, void Function(void Function() n) setState) async {

  FocusNode focusNodeOne = FocusNode();
  FocusNode focusNodeTwo = FocusNode();
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance().then((value) => value);
  LocalesPreferencesImpl localesPreferences = LocalesPreferencesImpl(sharedPreferences);
  String language = await localesPreferences.getLanguageKey();
  
  
  
  Uri uri = Uri.parse('https://goyerv.com');
  Uri uriTerms = Uri.parse('https://legal.goyerv.com');
  Uri uriPrivacy = Uri.parse('https://legal.goyerv.com');
  Uri uriSupport = Uri.parse('https://support.goyerv.com');
  Uri uriDevelopers = Uri.parse('https://developers.goyerv.com');
  Uri uriNews = Uri.parse('https://news.goyerv.com');


  return Container(
    alignment: Alignment.bottomCenter,
    color: Theme.of(context).primaryColorLight,
    padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
    child:  Column(
      children: [
        
        sbhavg,

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Flexible(child: RichText(text: TextSpan(children: [ TextSpan(text: '© ${DateFormat('yyyy').format(DateTime.now())} ', style: Theme.of(context).textTheme.labelSmall),  TextSpan(text: '${AppLocalizations.of(context).translate('Goyerv')} ', recognizer: TapGestureRecognizer()..onTap = () => launchUrl(uri), style: Theme.of(context).textTheme.labelSmall), TextSpan(text: AppLocalizations.of(context).translate('LLC. All rights reserved'), style: Theme.of(context).textTheme.labelSmall), ]))),

            Flexible(child: TextButton(onPressed: () => launchUrl(uriTerms), focusNode: focusNodeOne, child: Text(AppLocalizations.of(context).translate('Terms'), style: Theme.of(context).textTheme.labelSmall),)),

            Flexible(child: TextButton(onPressed: () => launchUrl(uriPrivacy), focusNode: focusNodeOne, child: Text(AppLocalizations.of(context).translate('Privacy'), style: Theme.of(context).textTheme.labelSmall),)),

            Flexible(child: TextButton(onPressed: () => launchUrl(uriSupport), focusNode: focusNodeOne, child: Text(AppLocalizations.of(context).translate('Support'), style: Theme.of(context).textTheme.labelSmall),)),
            
            Flexible(child: TextButton(onPressed: () => launchUrl(uriDevelopers), focusNode: focusNodeOne, child: Text(AppLocalizations.of(context).translate('Developers'), style: Theme.of(context).textTheme.labelSmall),)),
            
            Flexible(child: TextButton(onPressed: () => launchUrl(uriNews), focusNode: focusNodeOne, child: Text(AppLocalizations.of(context).translate('News'), style: Theme.of(context).textTheme.labelSmall),)),
      
            Row(children: [Flexible(child: Semantics(button: true, label: AppLocalizations.of(context).translate('Globe(Language) icon'), child: IconButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const Languages())), icon: const Icon(Icons.language), hoverColor: defaultColor, focusNode: focusNodeTwo))), Flexible(child: Text(language, style: Theme.of(context).textTheme.bodySmall)) ],)

          ],
        )
      ]
    
    )
  );

}