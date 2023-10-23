// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../web_core/global_fields/fields.dart';
import '../../../web_core/internationalization/app_localizations.dart';
import '../../../widget/presentation/states/widget.dart';

class CommunityGuidelines extends StatefulWidget {

  const CommunityGuidelines({Key? key}) : super(key: key);

  @override
  State<CommunityGuidelines> createState() => _CommunityGuidelinesState();
  
}

class _CommunityGuidelinesState extends State<CommunityGuidelines> {


  late Uri uriResources;
  late Uri uriLegal;
  late Uri uriGithubCommunity;
  late Uri uriCreativeCommons;

  @override 
  void initState() {
    uriResources = Uri.parse('https://resources.goyerv.com');
    uriLegal = Uri.parse('https://legal.goyerv.com');
    uriGithubCommunity = Uri.parse('https://docs.github.com/en/site-policy/github-terms/github-community-guidelines');
    uriCreativeCommons = Uri.parse('https://creativecommons.org/publicdomain/zero/1.0/');
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, setState),

      body: Title(
        title: AppLocalizations.of(context).translate('Goyerv - Community guidelines'),
        color: Theme.of(context).primaryColor,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Theme.of(context).primaryColor,
          child: ListView(
            children: [

              sbhmax,

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: RichText(
                  text: TextSpan(
                    children: [
                            
              
                      WidgetSpan(child: Icon(Icons.folder, size: 15.0, color: defaultColor, semanticLabel: AppLocalizations.of(context).translate('Folder icon'))),
              
                      TextSpan(text: ' / ', style: Theme.of(context).textTheme.labelSmall),
                            
                      TextSpan(text: AppLocalizations.of(context).translate('resources '), recognizer: TapGestureRecognizer()..onTap = () => Navigator.of(context).pop(), style: Theme.of(context).textTheme.labelSmall),
                            
                      TextSpan(text: '/ ', style: Theme.of(context).textTheme.labelSmall),
                            
                      TextSpan(text: AppLocalizations.of(context).translate('community guidelines'), recognizer: TapGestureRecognizer()..onTap = () => Navigator.of(context).pop(), style: Theme.of(context).textTheme.labelSmall)
                    ]
                  )
                ),
              ),
      
              sbhmax,
      
              Text(AppLocalizations.of(context).translate('The Goyerv Community Guidelines'), textAlign: TextAlign.center, style: Theme.of(context).textTheme.titleLarge),


              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
                child: Column(
                  crossAxisAlignment: MediaQuery.of(context).size.width < 1200? CrossAxisAlignment.start : CrossAxisAlignment.center,
                  children: [

                    sbhmax,

      
                    MediaQuery.of(context).size.width < 1200? Text(AppLocalizations.of(context).translate('Resource contents'), style: Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w600)) : Container(),

                    sbhavg,

                    MediaQuery.of(context).size.width < 1200? Text(AppLocalizations.of(context).translate('''• Building a healthy community\n• Dealing with offenses\n• Policy violations\n• Legal\n\n'''), style: Theme.of(context).textTheme.titleSmall!.copyWith(fontWeight: FontWeight.w600)) : Container(),
      
                    sbhmin,

                    MediaQuery.of(context).size.width < 1200? guidelines(context) : Row(
                      textBaseline: TextBaseline.alphabetic,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      children: [
                    
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: guidelines(context),
                        ),
                    
                        Column(
                          children: [

                            Text(AppLocalizations.of(context).translate('Resource contents'), style: Theme.of(context).textTheme.titleMedium),

                            sbhmin,

                            Text(AppLocalizations.of(context).translate('''• Building a healthy community\n• Dealing with offenses\n• Policy violations\n• Legal\n\n'''), style: Theme.of(context).textTheme.titleSmall!.copyWith(fontWeight: FontWeight.w600))
                          ],
                        )
                    
                      
                    
                      ],
                    ),
      
                  ]
                )
              ),


              sbhmax,
              sbhmax,
              
      
      
              //footer
              footer(context, setState)
            ],
          )
        ),
      )
    );
  }




  Widget guidelines(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width < 1200? MediaQuery.of(context).size.width : MediaQuery.of(context).size.width * 0.6,
      padding: EdgeInsets.all(MediaQuery.of(context).size.width < 1200? 0.0 : 0.10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
      
      
          RichText(
            text: TextSpan(
              children: [
      
                TextSpan(text: 
                  AppLocalizations.of(context).translate(
                    '''Thousands of people from different parts of the world rely on the platform Goyerv provides as a means of livelihood and as a convenient alternative. We're incredibly grateful for the opportunity to be able to provide a new way logistics can be carried out faster everyday. And the first step in achieving this goal is by building a strong, proud and vibrant community. \n\n Goyerv brings together people from different parts of the world. Each with their own unique perspectives and experiences. We're are fully committed to making Goyerv a platform that welcomes and encourages this diverse community and all it has to offer, while maintaining a safe space for all where professionalism is valued. \n\n By outlining what we think a safe, welcoming, and productive community should look like at Goyerv, we hope to help you understand how best to interact on our platform in line with our '''
                  ),

                  style: Theme.of(context).textTheme.bodyLarge,
                ),
      
                TextSpan(
                  text: AppLocalizations.of(context).translate('Terms of Service '),
                  recognizer: TapGestureRecognizer()..onTap = () => launchUrl(uriLegal),
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: defaultColor) 
                ),
      
                TextSpan(
                  text: AppLocalizations.of(context).translate('and '),
                  style: Theme.of(context).textTheme.bodyLarge
                ), 
      
                TextSpan(
                  text: AppLocalizations.of(context).translate('Privacy Policies.\n\n'),
                  recognizer: TapGestureRecognizer()..onTap = () => launchUrl(uriLegal),
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: defaultColor) 
                ),
      
      
      
                TextSpan(
                  text: AppLocalizations.of(context).translate(
                    '''We urge members of our community to pass across intentions clearly, carry out requests professionally, and report content that violate our '''
                  ),
                  style: Theme.of(context).textTheme.bodyLarge
                ),
      
                TextSpan(
                  text: AppLocalizations.of(context).translate('policies.'),
                  recognizer: TapGestureRecognizer()..onTap = () => launchUrl(uriLegal),
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: defaultColor) 
                ),
      
                TextSpan(
                  text: AppLocalizations.of(context).translate(
                    ''' Actions on reports we receive on contents that are not in line with our policies are carried out by a dedicated moderation team after a particular content have been investigated and found to be in violation of our '''
                  ),
                  style: Theme.of(context).textTheme.bodyLarge 
                ),
      
                TextSpan(
                  text: AppLocalizations.of(context).translate('Terms of Use.\n\n'),
                  recognizer: TapGestureRecognizer()..onTap = () => launchUrl(uriLegal),
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: defaultColor) 
                ),
      
      
              ]
            ),
          ),
      
      
          sbhavg,
      
      
          Text(AppLocalizations.of(context).translate('Building a healthy community'), style: Theme.of(context).textTheme.titleMedium),
      
          sbhavg,
      
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: AppLocalizations.of(context).translate(
                    '''The reason for the Goyerv community is to provide a platform where users can come to share their experiences, ask questions or seek help to challenges. We are committed to building a community where users can freely express themselves while still be respectful. These guidelines are here guide you on how to interact within the community.\n\n'''
                  ),
      
                  style: Theme.of(context).textTheme.bodyLarge 
                ),
      
      
                TextSpan(
                  text: AppLocalizations.of(context).translate(
                    '''Be welcoming and open-minded'''
                  ),
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w600) 
                ),
      
                TextSpan(
                  text: AppLocalizations.of(context).translate(
                    ''' - There are new users that join the community each day. Be understanding and open to the ideas of other people irrespective of their experience levels. Hear other people out and be welcoming to new members of the community\n\n'''
                  ),
                  style: Theme.of(context).textTheme.bodyLarge 
                ),
      
      
                TextSpan(
                  text: AppLocalizations.of(context).translate(
                    '''Be respectful'''
                  ),
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w600) 
                ),
      
                TextSpan(
                  text: AppLocalizations.of(context).translate(
                    ''' - Interacting in a public forum like this will some times result in arguments. In situations like this, please remember to criticize ideas, not people. Give thoughtful, constructive criticism and be respectful to those you interact with. If it is impossible for you to engage respectfully, then do not engage at all in other not to escalate an already tense situation.\n\n'''
                  ),
                  style: Theme.of(context).textTheme.bodyLarge 
                ),
      
      
                TextSpan(
                  text: AppLocalizations.of(context).translate(
                    '''Be kind'''
                  ),
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w600) 
                ),
      
                TextSpan(
                  text: AppLocalizations.of(context).translate(
                    ''' - Goyerv is a global community with people from different backgrounds and perspectives, many of which may not be your own. Try putting yourself in the other person's shoes and understand their feelings before you address them. Let your contribution help make Goyerv community better; let it make it a community where members feel safer and free to share ideas and give their opinions.\n\n'''
                  ),
                  style: Theme.of(context).textTheme.bodyLarge 
                ),
      
      
              ]
            )
          ),
      
      
      
          sbhavg,
      
      
      
          Text(AppLocalizations.of(context).translate('Dealing with offenses'), style: Theme.of(context).textTheme.titleMedium),
      
          sbhavg,
      
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: AppLocalizations.of(context).translate(
                    '''Not all arguments or disagreements can be resolved with direct, respectful dialogue between members of the community. In circumstances like this, we encourage users to '''
                  ),
      
                  style: Theme.of(context).textTheme.bodyLarge 
                ),
      
                TextSpan(
                  text: AppLocalizations.of(context).translate('Report'),
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w600)  
                ),
      
                TextSpan(
                  text: AppLocalizations.of(context).translate(
                    ''' (By clicking the menu icon at the right hand side) these discussions to us when they violate our '''
                  ),

                  style: Theme.of(context).textTheme.bodyLarge 
                ),
      
                TextSpan(
                  text: AppLocalizations.of(context).translate('policies.'),
                  recognizer: TapGestureRecognizer()..onTap = () => launchUrl(uriLegal),
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: defaultColor) 
                ),
      
                TextSpan(
                  text: AppLocalizations.of(context).translate(
                    ''' If you however find something or someone that you strongly object to, here are some ways Goyerv enables you to take action:\n\n'''
                  ),
    
                  style: Theme.of(context).textTheme.bodyLarge 
                ),
    
      
      
                TextSpan(
                  text: AppLocalizations.of(context).translate(
                    '''Block Users'''
                  ),
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w600) 
                ),
      
                TextSpan(
                  text: AppLocalizations.of(context).translate(
                    ''' - The Originator of a discussion can block certain users that they find offensive from replying or making comments in that discussion or any other discussions of theirs in the future. This helps in keeping certain users from making interactions in your discussion\n\n'''
                  ),
                  style: Theme.of(context).textTheme.bodyLarge 
                ),
      
      
                TextSpan(
                  text: AppLocalizations.of(context).translate(
                    '''Close Discussions'''
                  ),
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w600)
                ),
      
                TextSpan(
                  text: AppLocalizations.of(context).translate(
                    ''' - Whenever you notice that a discussion has escalated and gotten out of hand, rather than blocking individual contributors one after another, you can permanently close that discussion. When a discussion has been closed, no member of the community can ever make any contribution to it. This action can only be done by either the discussion's originator or a member of the Goyerv community that is a Goyerv Official.\n\n'''
                  ),
                  style: Theme.of(context).textTheme.bodyLarge 
                ),
      
      
                TextSpan(
                  text: AppLocalizations.of(context).translate(
                    '''Report Users'''
                  ),
                  style: Theme.of(context).textTheme.titleMedium  
                ),
      
                TextSpan(
                  text: AppLocalizations.of(context).translate(
                    ''' - If you need additional support in dealing with harmful, offensive or abusive content you notice in the community, you can report '''
                  ),
                  style: Theme.of(context).textTheme.bodyLarge 
                ),
      
                TextSpan(
                  text: AppLocalizations.of(context).translate('Report'),
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w600)  
                ),
      
                TextSpan(
                  text: AppLocalizations.of(context).translate(
                    ''' that content to us.\n\n'''
                  ),
                  style: Theme.of(context).textTheme.bodyLarge 
                ),
      
      
      
              ]
            )
          ),
      
      
          sbhavg,
      
      
          Text(AppLocalizations.of(context).translate('Policy violations'), style: Theme.of(context).textTheme.titleMedium),
      
          sbhavg,
      
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: AppLocalizations.of(context).translate(
                    '''Reports we get, as well as proactive detection, from members of the community help to ensure that Goyerv remains and stays safe and productive. We take into consideration a lot of factors whenever we get reports of content not in line with our  '''
                  ),
      
                  style: Theme.of(context).textTheme.bodyLarge 
                ),
      
                TextSpan(
                  text: AppLocalizations.of(context).translate('policies.'),
                  recognizer: TapGestureRecognizer()..onTap = () => launchUrl(uriLegal),
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: defaultColor) 
                ),
      
                TextSpan(
                  text: AppLocalizations.of(context).translate(
                    ''' But, while we want Goyerv community to remain safe and welcoming, we also want to stay true to our core vision which is the interconnection of human effort for limitless possibilities. This is what we intend to prioritize in our approach to content moderation and enforcing our policies. This means:\n\n'''
                  ),
                  style: Theme.of(context).textTheme.bodyLarge 
                ),
      
                                    
      
                TextSpan(
                  text: AppLocalizations.of(context).translate(
                    '''We optimize for information sharing'''
                  ),
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w600) 
                ),
      
      
                TextSpan(
                  text: AppLocalizations.of(context).translate(
                    ''' - sharing information amongst members of the community is key and really vital. We try as much as possible to preserve and retain the integrity information contributed in the community regardless of the contributor when carrying out enforcement actions which could potentially erase useful information by moderating as little useful content as possible.\n\n'''
                  ),
      
                  style: Theme.of(context).textTheme.bodyLarge 
                ),
      
      
                TextSpan(
                  text: AppLocalizations.of(context).translate(
                    '''We factor in contexts when moderating content'''
                  ),
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w600)  
                ),
      
                TextSpan(
                  text: AppLocalizations.of(context).translate(
                    ''' - Due to that fact that we understand that members of the community are humans and sometimes errors of judgement can be made, we take a human-centered approach to content moderation and respond to a situation to meet its specific needs. We have a team dedicated to investigating the reports we get by examining the surrounding context and checking the facts before taking action. This may include taking into account the preceding contents leading to the content that was reported as potentially offensive to see if it lacks context or if its posted in such a way that makes it very obvious, we may favour moderation in such a situation to safeguard the community. \n\nOur decisions are rooted in our core belief that serving an interconnected community and empowering people through technology requires a commitment to diversity, inclusion, and belonging.\n\n'''
                  ),
                  style: Theme.of(context).textTheme.bodyLarge 
                ),
      
      
      
              ]
            )
          ),
      
      
          sbhavg,
      
      
          Text(AppLocalizations.of(context).translate('Legal'), style: Theme.of(context).textTheme.titleMedium),
      
          sbhavg,
      
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: AppLocalizations.of(context).translate(
                    '''Guidelines by '''
                  ),
      
                  style: Theme.of(context).textTheme.bodyLarge 
                ),
      
                TextSpan(
                  text: AppLocalizations.of(context).translate('the Github Community'),
                  recognizer: TapGestureRecognizer()..onTap = () => launchUrl(uriGithubCommunity),
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: defaultColor) 
                ),
      
                TextSpan(
                  text: AppLocalizations.of(context).translate(
                    ''', dedicated to the public domain for anyone to use, adapt, or whatever under the terms of '''
                  ),
      
                  style: Theme.of(context).textTheme.bodyLarge 
                ),
      
                TextSpan(
                  text: AppLocalizations.of(context).translate('CC0-1.0'),
                  recognizer: TapGestureRecognizer()..onTap = () => launchUrl(uriCreativeCommons),
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: defaultColor) 
                ),
      
      
                TextSpan(
                  text: '.\n\n',
                  style: Theme.of(context).textTheme.bodyLarge 
                ),
      
                TextSpan(
                  text: AppLocalizations.of(context).translate(
                    '''These are only guidelines; they do not modify our '''
                  ),
                  style: Theme.of(context).textTheme.bodyLarge 
                ),
      
                TextSpan(
                  text: AppLocalizations.of(context).translate('Terms of Service'),
                  recognizer: TapGestureRecognizer()..onTap = () => launchUrl(uriLegal),
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: defaultColor) 
                ),
      
                TextSpan(
                  text: AppLocalizations.of(context).translate(
                    ''' and are not intended to be a complete list. Under those terms, Goyerv retains full discretion to remove any content or terminate any account for activity that violates our '''
                  ),
                  style: Theme.of(context).textTheme.bodyLarge 
                ),
      
                TextSpan(
                  text: AppLocalizations.of(context).translate('Policies'),
                  recognizer: TapGestureRecognizer()..onTap = () => launchUrl(uriLegal),
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: defaultColor) 
                ),
      
                TextSpan(
                  text: AppLocalizations.of(context).translate(
                    '''. These guidelines describe when we will exercise that discretion.'''
                  ),
                  style: Theme.of(context).textTheme.bodyLarge 
                ),
      
      
              ]
            )
          ),
      
      
      
        ],
      ),  
    );
 
  }


}