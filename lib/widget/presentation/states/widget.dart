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
import '../../../web_core/util/hover.dart';




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
Uri uriX = Uri.parse('https://x.com/goyervltd');
Uri uriLinkedIn = Uri.parse('https://www.linkedin.com/company/goyerv/');  


PreferredSizeWidget? appBar(BuildContext context) {

  return AppBar(
    automaticallyImplyLeading: false,
    leading: Padding(
      padding: const EdgeInsets.only(left: 20),
      child: InkWell(overlayColor: WidgetStateColor.resolveWith((states) => transparent), onTap: () => launchUrl(Uri.parse('https://www.goyerv.com')), child: Image.asset(Theme.of(context).brightness == Brightness.dark? 'assets/images/goyerv_logo_dark.png' : 'assets/images/goyerv_logo_light.png', fit: BoxFit.scaleDown, filterQuality: FilterQuality.high, semanticLabel: 'Goyerv logo', matchTextDirection: false, width: 27.0, height: 27.0, cacheWidth: 27, cacheHeight: 27,)),
    ),
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

        Wrap(
          spacing: 12,
          runSpacing: 12,
          alignment: WrapAlignment.center,
          children: [
            
            MouseRegion(cursor: SystemMouseCursors.click, child: GestureDetector(onTap: () => launchUrl(uriGoyerv), child: SvgPicture.asset('images/Goyerv_logo.svg', semanticsLabel: 'Goyerv logo', width: 25.0, height: 25.0))),

            sbhmin,

            MouseRegion(cursor: SystemMouseCursors.click, child: GestureDetector(onTap: () => launchUrl(uriX), child: SvgPicture.asset('images/X_logo.svg', semanticsLabel: 'X logo', width: 18.0, height: 18.0, color: Theme.of(context).brightness == Brightness.dark? white : black))),

            sbhmin,

            MouseRegion(cursor: SystemMouseCursors.click, child: GestureDetector(onTap: () => launchUrl(uriLinkedIn), child: SvgPicture.asset('images/LinkedIn_logo.svg', semanticsLabel: 'LinkedIn logo', width: 18.0, height: 18.0))),

            
          ],
        ),

        sbhmin,

        RichText(text: TextSpan(children: [ TextSpan(text: '© ${DateFormat('yyyy').format(DateTime.now())} ', style: Theme.of(context).textTheme.labelSmall),  TextSpan(text: 'Goyerv ', recognizer: TapGestureRecognizer()..onTap = () => launchUrl(uriGoyerv), style: Theme.of(context).textTheme.labelSmall), TextSpan(text: 'Ltd. All rights reserved', style: Theme.of(context).textTheme.labelSmall), ])),

        sbhavg,

        Center(
          child: Wrap(
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: screenWidth > 600 ? 16 : 0,
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
