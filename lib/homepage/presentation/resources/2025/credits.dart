// Copyright (c) 2025 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'package:flutter/material.dart';
import 'package:footer/footer_view.dart';
import 'package:share_plus/share_plus.dart';

import '../../../../web_core/global_fields/fields.dart';
import '../../../../widget/presentation/states/widget.dart';


class Credits extends StatefulWidget {
  
  const Credits({Key? key}) : super(key: key);

  @override
  State<Credits> createState() => _CreditsState();

}



class _CreditsState extends State<Credits> {


  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: Title(
        title: "Goyerv Resources - Credits",
        color: Theme.of(context).primaryColor,
        child: Container(
          width: MediaQuery.of(context).size.width,
          color: Theme.of(context).primaryColor,
          child: FooterView(
            footer: footer(context),
            flex: 8,
            children: [

              Padding(
                padding: EdgeInsets.all(MediaQuery.of(context).size.width >= 800? 50.0 : 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text("Credits", style: Theme.of(context).textTheme.headlineLarge),

                    sbhmin,

                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () => Share.share("https://resources.goyerv.com/2025/credits.html"),
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 5),
                          decoration: BoxDecoration(
                            color: transparent,
                            border: Border.all(color: blue),
                            borderRadius: BorderRadius.circular(50)
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                                    
                              const Icon(Icons.share_rounded, color: blue, size: 20),
                                    
                              const SizedBox(width: 6),
                                    
                              Text("Share", style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: grey, fontWeight: FontWeight.bold))
                           
                            ],
                          ),
                        ),
                      ),
                    ),

                    sbhmin,

                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(Radius.circular(9)), 
                        child: Image.network(
                          'https://resources.goyerv.com/2025/images/tap-to-pay.jpg',
                          fit: BoxFit.cover,
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.width * 0.60, 
                        ),
                      ),
                    ),

                    sbhmin,

                    const Padding(
                      padding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 16.0),
                      child: Row(
                        children: [
                        
                          Icon(Icons.calendar_today_outlined, size: 14, color: Colors.grey),

                          SizedBox(width: 4),
                          
                          Text(
                            'November 4, 2025 • 5 min read',
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        
                        ],
                      ),
                    ),

                    sbhavg,



                    Text(
                      '''Goyerv credits are free money added to your account that you can put toward your usage on the platform. You earn them by hitting a few simple milestones when you join, and if you refer someone to Goyerv, you earn credits when they hit those same milestones too. It works both ways — you benefit, and so does the person you bring in.\n\nThere is nothing to apply for or activate. Credits land in your account automatically once the qualifying action is complete.\n\nWhen a new user joins Goyerv using your referral link, both of you get \$10 in credits straight away. Just signing up is enough to unlock this one.\n\nOnce the new user makes their first successful request on the platform, both they and the person who referred them receive \$50 in credits. This is the moment someone goes from having an account to actually building with Goyerv, and we think that deserves a real reward.\n\nThe biggest reward comes when the new user completes their first successful run. Both users get \$100 in credits. This one marks a genuine milestone and that is worth celebrating.\n\nEvery credit award comes with a two-week expiry window, starting from the date it is issued. Each milestone has its own clock, so your \$10 sign-up credits and your \$50 request credits may expire on different dates depending on when you hit each one. We recommend keeping an eye on your credits balance in your dashboard so you always know what you have and when it runs out.\n\nEach user can refer a maximum of three people through the credits program. Once your three referrals have been accepted, your referral link will no longer generate credit rewards for new sign-ups. With that in mind, it is worth referring people who are likely to engage with the platform. The bigger rewards only kick in when your referral actually uses Goyerv, so bringing in someone who is genuinely interested makes a real difference.\n\nIf you refer one person and they go all the way through all three milestones, you both walk away with \$160 in credits. Refer three people who do the same, and that is \$480 in total credits for you, all just for bringing people on board and getting started yourself.\n\nWhen it comes to spending your credits, they go toward the fees you encounter while using the platform. Goyerv charges a 50% commission on transfers, 15% on requests with a scheduled post, and 3% on regular requests. There is also a 2% fee on withdrawals. Whenever you have credits in your account, they are automatically used to cover these fees first before anything else is charged. So the more credits you have, the less you are paying out of pocket while you use the platform.\n\nCredits are a straightforward way for us to reward the people who make Goyerv worth using. If you ever have questions about your balance or your referrals, you can check your dashboard at any time or get in touch with our support team.\n\n\n''',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),



                  ],
                )
              )


            ]
          ),
        ),
      ),
    );
  }


}