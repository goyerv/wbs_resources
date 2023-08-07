// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../goyerv/presentation/states/languages_state.dart';
import '../../../web_core/global_fields/fields.dart';
import '../../../web_core/internationalization/app_localizations.dart';
import '../../../widget/presentation/states/widget.dart';

class CommunityTips extends StatefulWidget {

  const CommunityTips({Key? key}) : super(key: key);

  @override
  State<CommunityTips> createState() =>  CommunityTipsState();

}

class  CommunityTipsState extends State<CommunityTips> {

  late Uri uriSupport;
  late Uri uriHowNotToAskStupidQuestions;
  // Later on, there should be two separate deep-links url here.
  // On that leads to support contact form and another to the call support webpage

  @override 
  void initState() {
    uriSupport = Uri.parse('https://resources.goyerv.com');
    uriHowNotToAskStupidQuestions = Uri.parse('http://www.catb.org/~esr/faqs/smart-questions.html');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, setState),
      
      body: Title(
        title: AppLocalizations.of(context).translate('Goyerv - Community rules'),
        color: Theme.of(context).primaryColor,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Theme.of(context).primaryColor,
          child: Column(
            children: [
      
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                child: Column(
                  children: [
      
                    Text(AppLocalizations.of(context).translate('The Goyerv Community Rules'), style: Theme.of(context).textTheme.titleLarge),
      
                    sbhavg,
      
                    Text(AppLocalizations.of(context).translate('Table of contents'), style: Theme.of(context).textTheme.titleMedium),
      
                    sbhmin,
      
      
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
      
                        Flexible(
                          child: Text(
                            AppLocalizations.of(context).translate(
                              '''• Searching for answers\n• Question headline\n• Grammar\n• Being informative\n• How to respond\n• Follow up\n• Appendix\n\n''',
                            ),
                            
                            style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w500)
                          )
                        ),
      
      
                        Flexible(
                          child: Column(
                            children: [
      
                              RichText(
                                text: TextSpan(
                                  children: [
                                    
                                    TextSpan(
                                      text: AppLocalizations.of(context).translate(
                                        '''The reason for these rules is to guide you in writing a question in its best possible version that'll attract members of the community whom are in the best possible place and competent enough to answer your questions.\n\n Among the members of the Goyerv support communities are Goyerv support officials and they try as much as possible to address questions by other members of the community. Regardless, we would like you to note that Goyerv support community is largely made up of individuals just like you and as such, are not obligated to answer your questions. They do that of their own accord and in no way are they representatives of Goyerv.\n\n If you'd like to contact an authorized Goyerv support staff, fill out the contact form '''
                                      ),
      
                                      style: Theme.of(context).textTheme.bodyLarge,
                                    ),
      
                                    TextSpan(
                                      text: AppLocalizations.of(context).translate('here'),
                                      recognizer: TapGestureRecognizer()..onTap = () => launchUrl(uriSupport),
                                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: defaultColor) 
                                    ),
      
                                    TextSpan(
                                      text: AppLocalizations.of(context).translate(
                                        '''. To speak directly with a Goyerv support staff, see the '''
                                      ),
      
                                      style: Theme.of(context).textTheme.bodyLarge,
                                    ),
      
                                    TextSpan(
                                      text: AppLocalizations.of(context).translate('call support'),
                                      recognizer: TapGestureRecognizer()..onTap = () => launchUrl(uriSupport),
                                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: defaultColor) 
                                    ),
      
                                    TextSpan(
                                      text: AppLocalizations.of(context).translate(
                                        ''' web page for the list of phone numbers specific to your location to call.\n\n'''
                                      ),
      
                                      style: Theme.of(context).textTheme.bodyLarge,
                                    ),
      
                                  ]
                                )
                              ),
      
                              sbhavg,
      
      
                              Text(AppLocalizations.of(context).translate('Searching for answers'), style: Theme.of(context).textTheme.titleMedium),
      
                              sbhmin,
      
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: AppLocalizations.of(context).translate(
                                        '''Before asking questions on the community platform, make sure that you have sufficiently gone through previously asked questions about issues similar to yours. The community opening webpage contains a search field. Use it. You might likely find, if not questions identical to yours, then similar ones which have all been answered by the community.\n This way, you already have an answer to your question without ever having to ask it.\n\n'''
                                      ),
      
                                      style: Theme.of(context).textTheme.bodyLarge 
                                    ),
      
      
      
                                    TextSpan(
                                      text: AppLocalizations.of(context).translate(
                                        '''\t\t\t. Advice'''
                                      ),
                                      style: Theme.of(context).textTheme.titleMedium
                                    ),
      
                                    TextSpan(
                                      text: AppLocalizations.of(context).translate(
                                        ''' - Questions on this platform all have timestamps on them. Our advice is to carefully look at the timestamps on each question before applying the solutions originally given to it to yourself. We generally consider answers to questions with longer timestamps outdated compared to answers to questions with a more recent timestamp. To receive email updates on a particular discussion, your can '''
                                      ),
                                      style: Theme.of(context).textTheme.bodyLarge 
                                    ),
      
                                    TextSpan(
                                      text: AppLocalizations.of(context).translate('Subscribe'),
                                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w500)
                                    ),
      
                                    TextSpan(
                                      text: AppLocalizations.of(context).translate(
                                        ''' to it by clicking the bell icon.\n\n'''
                                      ),
                                      style: Theme.of(context).textTheme.bodyLarge 
                                    ),
      
                                    TextSpan(
                                      text: AppLocalizations.of(context).translate(
                                        '''In the event that you still are unable to find a suitable answer to your question, then continue reading.'''
                                      ),
                                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w500) 
                                    ),
      
                                  ]
                                )
                              ),
      
      
                              sbhavg,
      
      
                              Text(AppLocalizations.of(context).translate('Question headline'), style: Theme.of(context).textTheme.titleMedium),
      
                              sbhmin,
      
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: AppLocalizations.of(context).translate(
                                        '''Your question headline plays a huge role in getting the right answers to your question because that's the first part of your question everyone sees first. Accurately articulating your question in 50 characters or less is key to attracting the attention of members of the community with similar issues or with the right answers. So don't waste it by grovelling or with unnecessary punctuation marks. Instead, use it to describe your problem concisely. For example: \n\n'''
                                      ),
      
                                      style: Theme.of(context).textTheme.bodyLarge 
                                    ),
      
      
                                    TextSpan(
                                      text: AppLocalizations.of(context).translate(
                                        '''A Good headline\n'''
                                      ),
                                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w500) 
                                    ),
      
                                    TextSpan(
                                      text: AppLocalizations.of(context).translate(
                                        '''A crypto currency deposit I made 24 hours ago is yet to reflect on my available balance\n\n'''
                                      ),
                                      style: Theme.of(context).textTheme.bodyLarge 
                                    ),
      
      
                                    TextSpan(
                                      text: AppLocalizations.of(context).translate(
                                        '''A bad headline\n'''
                                      ),
                                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w500) 
                                    ),
      
                                    TextSpan(
                                      text: AppLocalizations.of(context).translate(
                                        '''SOMEBODY PLEASE HELP!! I CAN'T FIND MY MONEY!!\n\n'''
                                      ),
                                      style: Theme.of(context).textTheme.bodyLarge 
                                    ),
      
      
                                    TextSpan(
                                      text: AppLocalizations.of(context).translate(
                                        '''If you are not fluent in English, compose your question in the language you're most fluent in. A well composed question in a language few understand is better than one nobody understands. There are several language versions of the Goyerv community website:\n'''
                                      ),
                                      style: Theme.of(context).textTheme.bodyLarge 
                                    ),
      
                                    TextSpan(
                                      text: AppLocalizations.of(context).translate(
                                        '''\t\t See list'''
                                      ),
                                      recognizer: TapGestureRecognizer()..onTap = () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const Languages())),
                                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: defaultColor) 
                                    ),
      
      
                                  ]
                                )
                              ),
      
      
                              sbhavg,
      
      
                              Text(AppLocalizations.of(context).translate('Grammar'), style: Theme.of(context).textTheme.titleMedium),
      
                              sbhmin,
      
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: AppLocalizations.of(context).translate(
                                        '''Composing your question clearly is important. Take the extra time and effort in making grammatical corrections. People spend their time going through your question and one with sloppy grammar, in any language, is not good. It doesn't have to be formal, just precise. Spell, punctuate, and capitalize correctly. Don't type in all caps; it comes across as rude. Don't use slangs and don't use instant-messaging shortcuts.\n\n'''
                                      ),
      
                                      style: Theme.of(context).textTheme.bodyLarge 
                                    ),
      
      
                                    TextSpan(
                                      text: AppLocalizations.of(context).translate(
                                        '''- Be informative\n\n'''
                                      ),
                                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w500) 
                                    ),
      
                                    TextSpan(
                                      text: AppLocalizations.of(context).translate(
                                        '''• Describe the your issue you are having carefully and clearly\n • Give the right context\n • What steps have you taken to resolve the problem you're facing\n • Describe progresses you've had concerning the problem if you've had any\n\n'''
                                      ),
                                      style: Theme.of(context).textTheme.bodyLarge 
                                    ),
      
      
                                    TextSpan(
                                      text: AppLocalizations.of(context).translate(
                                        '''Try to give as much relevant information as you can when asking your question. Members of the community are not mind readers; they cannot help you if you leave out the important details. If you did something dumb, share it. That's more helpful than leaving the community to making assumptions.\n\n'''
                                      ),
                                      style: Theme.of(context).textTheme.bodyLarge 
                                    ),
      
      
                                    TextSpan(
                                      text: AppLocalizations.of(context).translate(
                                        '''Volume:'''
                                      ),
                                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w500) 
                                    ),
      
                                    TextSpan(
                                      text: AppLocalizations.of(context).translate(
                                        ''' - Remember that your question has to be succinct while still being informative. This end is not served by dumping huge volumes of irrelevant information into your question. If your problem is complicated and large, try as much as possible to trim it and make as small as possible. Doing this is good because:\n'''
                                      ),
                                      style: Theme.of(context).textTheme.bodyLarge 
                                    ),
      
                                    TextSpan(
                                      text: AppLocalizations.of(context).translate(
                                        '''• You'll likely get an answer\n • You'll likely get a useful answer,\n • While refining your question, there's a chance that you may come up with the answer, fix or workaround to your question yourself.\n\n'''
                                      ),
                                      style: Theme.of(context).textTheme.bodyLarge 
                                    ),
      
                                    TextSpan(
                                      text: AppLocalizations.of(context).translate(
                                        '''Describe your problem's symptoms in chronological order'''
                                      ),
                                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w500) 
                                    ),
      
                                    TextSpan(
                                      text: AppLocalizations.of(context).translate(
                                        ''' - If the problem you're facing is software related, hints most useful in finding out what went wrong are usually in the events immediately prior. Therefore, when composing your question, describe precisely the actions you took and what the software did afterwards that led to the problem. \n\nIf your problem is request related, then describe exactly the events leading up to the point where you had the problem, the actions that you and your client took, and relevant behavioral observations you made prior to or while carrying out the request. \n\nIf your account ends up being long, state the problem at the top, then follow that with your account chronologically. This way, people can know what to look out for while reading your tale.\n\n'''
                                      ),
                                      style: Theme.of(context).textTheme.bodyLarge 
                                    ),
      
      
                                  ]
                                )
                              ),
                              
                              
                              sbhavg,
      
      
                              Text(AppLocalizations.of(context).translate('How to respond'), style: Theme.of(context).textTheme.titleMedium),
      
                              sbhmin,
      
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: AppLocalizations.of(context).translate(
                                        '''Before giving answers to questions in public forums like this, we'd like to remind you that people are different. No two individuals are the same; similar? yes, but not identical. On that note, please be kind. Try as much as you can to understand them and the point they're trying to make. Problem-related stress can make people seem rude even when they aren't. \n\nDo not humiliate someone or make them feel less than for something that was said or did that was an honest mistake. A person can really have no idea about something and that's okay. Don't take it upon yourself to carefully point out all of the flaws of that person to make a point. Try not to digress. Stay on topic always. \n\n If you have no idea, say so! Or better still, say nothing. A smart-sounding but wrong answer is worse than no answer at all. Don't lead anyone on goose chases to appear smart. Be humble, be honest; set good examples for everyone. \n\nIf you can't provide a solution, that's fine. Just don't add to the problem. Don't hinder or make it difficult for other members of the community to be of help. Don't be sarcastic as it might be wrongfully interpreted. \n\nAsking probing questions to reveal more details about a problem is a good technique that enables the querent learn something new about their problem. Turn a bad question into a good one. \n\nLet your answer be helpful to the whole community. Whenever you come across a question, let your response to that question not just be for the querent but for the entire community so that a question like that never has to come up again. Thoroughly think about a question and all its possible variants, then give a detailed answer that addresses not just the querent's question but also all its possible variants. In doing this, you have created a reference for the community.\n\n'''
                                      ),
      
                                      style: Theme.of(context).textTheme.bodyLarge 
                                    ),
      
                                  ]
                                )
                              ),
      
      
      
                              sbhavg,
      
      
                              Text(AppLocalizations.of(context).translate('Follow up'), style: Theme.of(context).textTheme.titleMedium),
      
                              sbhmin,
      
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: AppLocalizations.of(context).translate(
                                        '''To reiterate, the Goyerv community comprises of large number of people from across the world. These people are humans just like you. They are not obligated or compensated in anyway by Goyerv. So, as an originator of a discussion, don't dump your question and forget about it. Follow it up. \n\nIf you've gotten a response, be courteous enough to indicate whether or not it was helpful in a polite way by replying to comments. If an answer solved your problem, say so. That way members can move on to other questions in the community. \n\nBut, if after a considerable amount of time has elapsed, and there's still been no response to your question, ask a new one. \n\nQuestions without responses gets automatically sent to a Goyerv support staff. Don't loose hope.'''
                                      ),
      
                                      style: Theme.of(context).textTheme.bodyLarge 
                                    ),
      
                                  ]
                                )
                              ),
      
      
      
      
                              sbhavg,
      
      
                              Text(AppLocalizations.of(context).translate('Appendix'), style: Theme.of(context).textTheme.titleMedium),
      
                              sbhmin,
      
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: AppLocalizations.of(context).translate(
                                        '''Advanced study\n'''
                                      ),
      
                                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w500) 
                                    ),
      
                                    TextSpan(
                                      text: AppLocalizations.of(context).translate(
                                        '''how to ask questions'''
                                      ),
                                      recognizer: TapGestureRecognizer()..onTap = () => launchUrl(uriHowNotToAskStupidQuestions),
                                      style: Theme.of(context).textTheme.bodyLarge 
                                    ),
      
                                  ]
                                )
                              ),
      
      
      
                            ],
                          )
                        )
      
      
      
      
                      ],
                    )
      
                    
                  ],
                ),
              ),
      
      
              //footer
              footer(context, setState)
            ],
          ),
        ),
      )
    );
  }
  
}