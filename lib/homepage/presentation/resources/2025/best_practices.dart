// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'package:flutter/material.dart';
import 'package:footer/footer_view.dart';
import 'package:share_plus/share_plus.dart';

import '../../../../web_core/global_fields/fields.dart';
import '../../../../widget/presentation/states/widget.dart';


class BestPractices extends StatefulWidget {
  
  const BestPractices({Key? key}) : super(key: key);

  @override
  State<BestPractices> createState() => _BestPracticesState();

}



class _BestPracticesState extends State<BestPractices> {


  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: Title(
        title: "Goyerv Resources - Best Practices",
        color: Theme.of(context).primaryColor,
        child: Container(
          width: MediaQuery.of(context).size.width,
          color: Theme.of(context).primaryColor,
          child: FooterView(
            footer: footer(context),
            children: [

              Padding(
                padding: EdgeInsets.all(MediaQuery.of(context).size.width >= 800? 50.0 : 16.0),
                child: Column(
                  children: [

                    Text("Best Practices", style: Theme.of(context).textTheme.headlineLarge),


                    GestureDetector(
                      onTap: () => Share.share("https://resources.goyerv.com/2025/best-practices.html"),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 10),
                        decoration: BoxDecoration(
                          color: transparent,
                          border: Border.all(color: grey),
                          borderRadius: BorderRadius.circular(50)
                        ),
                        child: Row(
                          children: [
                                  
                            const Icon(Icons.share_rounded, color: grey),
                                  
                            sbwmin,
                                  
                            Text("Share", style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: grey, fontWeight: FontWeight.bold))
                         
                          ],
                        ),
                      ),
                    ),



                    sbhavg,



                    Text(
                      '''
                      Best practices are the unwritten rules and golden habits that shape the most efficient, safe, and rewarding experience for both Runners and customers on platforms like Goyerv. They are learned from industry veterans, refined by everyday use, and mirrored across successful delivery and ride-sharing ecosystems. Goyerv Runners can benefit greatly from adopting proven behaviors that increase customer satisfaction, build personal credibility, and ensure smoother, safer transactions. This guide highlights several of these best practices, drawn from a wide range of gig economy platforms and logistics operations.\n\nPunctuality is a universal best practice in any on-demand service. Whether it's picking up an item from a store or arriving to collect a parcel for delivery, time matters. Runners should develop the habit of being time-conscious and communicative. If delays arise, inform the customer promptly through the platform. Proactive communication builds trust and prevents misunderstandings.\n\nProfessional presentation is another key area. Goyerv Runners are often the only in-person contact the customer will have, and your appearance reflects the professionalism of the platform. Dressing neatly, greeting courteously, and handling items with care all contribute to a positive experience. Even when dealing with informal requests, maintaining a courteous and composed demeanor goes a long way.\n\nClear documentation and confirmation habits are crucial. Reliable services often require signatures and delivery proofs for a reason—they prevent disputes. On Goyerv, Runners should take photos of parcels before and after pickup, confirm package conditions, and request confirmation upon handoff. Use in-app features to document the process wherever possible. If there's a discrepancy later, this evidence serves to protect both the Runner and the customer.\n\nRoute planning and efficiency are another area where best practices shine. Runners, especially those handling multiple requests, should plan their routes ahead of time. Use navigation apps with real-time traffic updates and always double-check pickup and drop-off locations before setting out. Efficient routing saves time, reduces costs, and improves reliability.\n\nCommunication is the backbone of any successful request. Runners should stay in close contact with customers—ask clarifying questions, confirm details, and provide updates. Communication should remain respectful, prompt, and professional. Never assume—always confirm. Customers appreciate transparency and feel more secure when they’re kept in the loop.\n\nSafety protocols are non-negotiable best practices. Runners should prioritize personal safety at all times. Avoid secluded pickup or drop-off locations, especially at night. If anything about a request feels suspicious, report it and withdraw. Trust your instincts. Safety is not just a policy—it’s a mindset that must be actively maintained.\n\nRespect for customer property is essential. Handle all items, especially fragile or high-value ones, with the same care you'd want for your own belongings. If an item seems insecurely packed, request to repack or reinforce it before proceeding. Ensuring item safety isn’t only about damage prevention—it’s about trust and responsibility.\n\nDigital professionalism is also part of the modern best practices set. Keep your app updated, maintain a strong internet connection, and respond quickly to new requests. Runners should only accept requests they’re ready to fulfill within the given time. This ensures smoother operations and reduces the chances of incomplete or delayed deliveries.\n\nOne of the more nuanced practices is managing customer expectations. Sometimes a customer might request something specific that isn’t available or misjudge the time it takes to complete a run. In such cases, setting realistic expectations and offering alternatives helps avoid dissatisfaction. For instance, if a store is closed or the item is unavailable, let them know promptly and suggest a nearby alternative.\n\nAnother high-level best practice is building your own personal brand within the platform. Being consistent, polite, responsive, and efficient will earn positive reviews. These reviews, in turn, lead to more requests and build a Runner’s credibility. Maintaining a high rating isn’t just about doing your job—it’s about going the extra mile, literally and figuratively.\n\nFinally, reflect and improve regularly. Many successful services collect feedback to improve performance. Runners can apply this lesson by reviewing customer feedback, reflecting on what went well, and identifying areas for growth. Taking a few minutes after each request to think about how it went—and what could be better next time—cultivates professionalism and mastery over time.\n\nIncorporating these best practices into your routine can transform your Goyerv experience. They offer a foundation not just for success on the platform, but also for long-term growth, personal safety, and professional development.\n\n\n
                      ''',
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