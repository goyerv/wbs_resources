// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:footer/footer.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../web_core/global_fields/fields.dart';




FocusNode focusNodeOne = FocusNode();
FocusNode focusNodeTwo = FocusNode();
FocusNode focusNodeThree = FocusNode();
FocusNode focusNodeFour = FocusNode();
FocusNode focusNodeFive = FocusNode();

Uri uri = Uri.parse('https://www.goyerv.com');
Uri uriTerms = Uri.parse('https://legal.goyerv.com');
Uri uriPrivacy = Uri.parse('https://legal.goyerv.com');
Uri uriSupport = Uri.parse('https://support.goyerv.com');
Uri uriDevelopers = Uri.parse('https://github.com/goyerv');
Uri uriBulletin = Uri.parse('https://careers.goyerv.com/goyerv');




Uri uriGoyerv = Uri.parse('https://www.goyerv.com/goyerv');
Uri uriFacebook = Uri.parse('https://web.facebook.com/profile.php?id=61573027977193');
// Remember to update this username
Uri uriX = Uri.parse('https://x.com/goyervltd');
Uri uriInstagram = Uri.parse('https://www.instagram.com/goyervltd/');
Uri uriThreads = Uri.parse('https://www.threads.net/@goyervltd');  
Uri uriYouTube = Uri.parse('https://www.youtube.com/@Goyerv');  
Uri uriLinkedIn = Uri.parse('https://www.linkedin.com/company/goyerv/');  
// TikTok




PreferredSizeWidget? appBar(BuildContext context) {

  return AppBar(
    automaticallyImplyLeading: false,
    leading: InkWell(overlayColor: WidgetStateColor.resolveWith((states) => transparent), onTap: () => launchUrl(Uri.parse('https://www.goyerv.com')), child: Image.asset('images/goyerv_logo.png', fit: BoxFit.scaleDown, filterQuality: FilterQuality.high, semanticLabel: 'Goyerv logo', matchTextDirection: false)),
    title: Text('Resources', style: Theme.of(context).textTheme.titleLarge),
    flexibleSpace: ClipRect(child: BackdropFilter(filter: ImageFilter.blur(sigmaX: 40.0, sigmaY: 40.0), child: Container(color: transparent))),
  );
  
}







Footer footer(BuildContext context) {

  double screenWidth = MediaQuery.of(context).size.width;


  return Footer(
    backgroundColor: Theme.of(context).primaryColor,
    padding: const EdgeInsets.all(15.0),
    child: Column(
      children: [

        sbhavg,

        Row(
          children: [
            
            GestureDetector(onTap: () => launchUrl(uriGoyerv), child: SvgPicture.asset('images/Goyerv_logo.svg', semanticsLabel: 'Goyerv logo')),

            sbhmin,

            GestureDetector(onTap: () => launchUrl(uriFacebook), child: SvgPicture.asset('images/Facebook_logo.svg', semanticsLabel: 'Facebook logo')),

            sbhmin,

            GestureDetector(onTap: () => launchUrl(uriX), child: SvgPicture.asset('images/X_logo.svg', semanticsLabel: 'X logo')),

            sbhmin,

            GestureDetector(onTap: () => launchUrl(uriInstagram), child: SvgPicture.asset('images/Instagram_logo.svg', semanticsLabel: 'Instagram logo')),

            sbhmin,

            GestureDetector(onTap: () =>launchUrl(uriThreads), child: SvgPicture.asset('images/Threads_logo.svg', semanticsLabel: 'Threads logo')),

            sbhmin,

            GestureDetector(onTap: () => launchUrl(uriYouTube), child: SvgPicture.asset('images/YouTube_logo.svg', semanticsLabel: 'YouTube logo')),

            sbhmin,

            GestureDetector(onTap: () => launchUrl(uriLinkedIn), child: SvgPicture.asset('images/LinkedIn_logo.svg', semanticsLabel: 'LinkedIn logo')),



            
          ],
        ),

        sbhmin,

        RichText(text: TextSpan(children: [ TextSpan(text: '© ${DateFormat('yyyy').format(DateTime.now())} ', style: Theme.of(context).textTheme.labelSmall),  TextSpan(text: 'Goyerv ', recognizer: TapGestureRecognizer()..onTap = () => launchUrl(uriGoyerv), style: Theme.of(context).textTheme.labelSmall), TextSpan(text: 'Ltd. All rights reserved', style: Theme.of(context).textTheme.labelSmall), ])),


        sbhavg,


        Center(
          child: Wrap(
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 16,
            runSpacing: 16,
            direction: screenWidth > 600 ? Axis.horizontal : Axis.vertical,
            children: [

              OnHover(builder: (isHovered, context) => TextButton(onPressed: () => launchUrl(uriTerms), focusNode: focusNodeOne, child: Text('Terms', style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: isHovered? defaultColor : Theme.of(context).textTheme.bodyLarge!.color)),),),
              OnHover(builder: (isHovered, context) => TextButton(onPressed: () => launchUrl(uriPrivacy), focusNode: focusNodeTwo, child: Text('Privacy', style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: isHovered? defaultColor : Theme.of(context).textTheme.bodyLarge!.color)),),),
              OnHover(builder: (isHovered, context) => TextButton(onPressed: () => launchUrl(uriSupport), focusNode: focusNodeThree, child: Text('Support', style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: isHovered? defaultColor : Theme.of(context).textTheme.bodyLarge!.color)),),),
              OnHover(builder: (isHovered, context) => TextButton(onPressed: () => launchUrl(uriDevelopers), focusNode: focusNodeFour, child: Text('Developers', style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: isHovered? defaultColor : Theme.of(context).textTheme.bodyLarge!.color)),),),
              OnHover(builder: (isHovered, context) => TextButton(onPressed: () => launchUrl(uriBulletin), focusNode: focusNodeFive, child: Text('Bulletin', style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: isHovered? defaultColor : Theme.of(context).textTheme.bodyLarge!.color)),),),

            ],
          ),
        )


      ],
    )
  );




}
