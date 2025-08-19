// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'package:flutter/material.dart';
import 'package:footer/footer_view.dart';
import 'package:share_plus/share_plus.dart';

import '../../../../web_core/global_fields/fields.dart';
import '../../../../widget/presentation/states/widget.dart';


class ProhibitedRequests extends StatefulWidget {
  
  const ProhibitedRequests({Key? key}) : super(key: key);

  @override
  State<ProhibitedRequests> createState() => _ProhibitedRequestsState();

}



class _ProhibitedRequestsState extends State<ProhibitedRequests> {


  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: Title(
        title: "Goyerv Resources - Prohibited Requests",
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

                    Text("Prohibited Requests", style: Theme.of(context).textTheme.headlineLarge),

                    sbhmin,


                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () => Share.share("https://resources.goyerv.com/2025/prohibited-requests.html"),
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
                        borderRadius: const BorderRadius.all(Radius.circular(18)), 
                        child: Image.network(
                          'https://resources.goyerv.com/2025/images/morocco-outside-the-bazaar-in-Marrakech.jpg',
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: MediaQuery.of(context).size.width * 0.15, 
                        ),
                      ),
                    ),


                    sbhavg,


                    Text(
                      '''Goyerv is designed to empower everyday people to help one another move items across towns, cities, and even countries—but not at the expense of safety, legality, or trust. To keep the platform reliable and lawful, there are strict rules on what kinds of requests are not allowed. Understanding these prohibited request types is crucial for both customers and runners to avoid account restrictions, legal trouble, or safety risks.\n\nFirst and foremost, any request that involves the transport or purchase of illegal or controlled substances is strictly prohibited. This includes obvious examples such as narcotics, firearms, or counterfeit goods. But it also includes less obvious items that may be restricted in certain countries—like certain herbal supplements, specific books or publications, and even types of electronics. Just because something is legal in one country doesn’t mean it’s allowed in another. A customer requesting a runner to carry a novel that’s banned in the runner’s transit or destination country, for instance, would be violating Goyerv’s policies and potentially putting the runner at serious risk with customs or border authorities.\n\nRequests that involve carrying unidentified or sealed packages without full disclosure of their contents are also not allowed. Runners should never be asked to carry items they are not permitted to inspect. For example, if a customer insists that a runner transport a gift-wrapped box “without opening it,” that request is invalid unless the runner can verify and confirm what’s inside. This policy is in place to prevent misuse of the platform for smuggling or deceptive activities.\n\nAnother category of prohibited requests includes those that ask runners to break store policies or local regulations. This can take the form of a delivery request asking someone to purchase items that require age verification—like alcohol or tobacco—without proper documentation or procedures. If a runner is asked to “just grab a bottle of wine real quick” for someone underage or from a location where ID is clearly required, they should decline and report the request.\n\nRequests that exploit runners financially or unethically are also disallowed. For instance, a customer shouldn’t post a delivery request with an implied urgency, then cancel once the runner has already spent personal funds on the purchase, just to avoid paying. Goyerv automatically provides protection where possible, such as compensation timelines, but runners should be wary of signs that a customer may not be acting in good faith. Any attempt to manipulate or defraud a runner—whether it's by asking them to pay exorbitant amounts upfront or to travel without reimbursement—is a violation of Goyerv’s terms.\n\nIt's also important to note that Goyerv is not a courier service for dangerous or improperly packaged materials. Requests involving volatile chemicals, biological samples, sharp or exposed metal objects, or any item that poses a health or safety risk during transportation are not allowed. Even in everyday scenarios, poor packaging can become a safety issue—like a leaking container of cleaning product that ends up in someone’s luggage on a long-haul flight. Runners have the right to refuse a request if the item isn’t properly packaged or seems risky in any way.\n\nLastly, any request that violates community standards—such as offensive, discriminatory, or exploitative instructions—is immediately disqualifying. Goyerv is a peer-powered platform built on respect and shared responsibility. If a request contains disrespectful language, discriminatory intent, or even inappropriate “jokes” about what’s being delivered, it should be flagged and taken down.\n\nTo stay safe and compliant, both customers and runners are encouraged to thoroughly review the items being exchanged, communicate clearly, and report any suspicious or concerning activity to support. At the end of the day, Goyerv only works when trust is mutual, safety is respected, and everyone plays by the same honest rules.\n\n''',
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