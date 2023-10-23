// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../web_core/global_fields/fields.dart';
import '../../../web_core/internationalization/app_localizations.dart';
import '../../../widget/presentation/states/widget.dart';
// import '../bloc/homepage_bloc.dart';
import 'community_guidelines_state.dart.dart';
import 'community_rules_state.dart';

class Homepage extends StatefulWidget {
  
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();

}



class _HomepageState extends State<Homepage> {

  late FocusNode focusNodeOne;
  late FocusNode focusNodeTwo;


  @override 
  void initState() {
    focusNodeOne = FocusNode();
    focusNodeTwo = FocusNode();
    // BlocProvider(create: ((context) => sl<HomepageBloc>()),);
    // BlocProvider.of<HomepageBloc>(context).add(const GetResourcesEvent(null));
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, setState),

      body: Title(
        title: AppLocalizations.of(context).translate('Goyerv - Resources'),
        color: Theme.of(context).primaryColor,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Theme.of(context).primaryColor,
          child: ListView(
            children: [
              
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
          
                    sbhavg,

                    RichText(text: TextSpan(children: [ WidgetSpan(child: Icon(Icons.folder, size: 15.0, color: defaultColor, semanticLabel: AppLocalizations.of(context).translate('Folder icon') )), TextSpan(text: ' / ', style: Theme.of(context).textTheme.labelSmall), TextSpan(text: AppLocalizations.of(context).translate('Recent articles'), style: Theme.of(context).textTheme.labelSmall),  ])),
          
                    sbhavg,
          
          
                    ListTile(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const CommunityTips())),
                      title: Text(AppLocalizations.of(context).translate('Goyerv community rules'), style: Theme.of(context).textTheme.titleMedium),
                      hoverColor: Theme.of(context).primaryColorDark,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      tileColor: Theme.of(context).primaryColorDark,
                      focusNode: focusNodeOne,
                    ),
          
                    sbhmin,
          
          
                    ListTile(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const CommunityGuidelines())),
                      title: Text(AppLocalizations.of(context).translate('Goyerv community guidelines'), style: Theme.of(context).textTheme.titleMedium),
                      hoverColor: Theme.of(context).primaryColorDark,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      tileColor: Theme.of(context).primaryColorDark,
                      focusNode: focusNodeTwo,
                    ),
          
                  ]
                ),
              ),



              SizedBox(height: MediaQuery.of(context).size.height * 0.3),
          
          
          
              //footer
              footer(context, setState),
          
          
          
            ],
          )
        ),
      ),
    );
  }



  @override 
  void dispose() {
    focusNodeOne.dispose();
    focusNodeTwo.dispose();
    super.dispose();
  }

}