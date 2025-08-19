// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'package:flutter/material.dart';
import 'package:footer/footer_view.dart';
import 'package:share_plus/share_plus.dart';

import '../../../../web_core/global_fields/fields.dart';
import '../../../../widget/presentation/states/widget.dart';


class UnfinishedRequests extends StatefulWidget {
  
  const UnfinishedRequests({Key? key}) : super(key: key);

  @override
  State<UnfinishedRequests> createState() => _UnfinishedRequestsState();

}



class _UnfinishedRequestsState extends State<UnfinishedRequests> {


  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: Title(
        title: "Goyerv Resources - Handling Uncompleted Requests",
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

                    Text("Handling Uncompleted Requests", style: Theme.of(context).textTheme.headlineLarge),

                    sbhmin,


                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () => Share.share("https://resources.goyerv.com/2025/handling-uncompleted-requests.html"),
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
                          'https://resources.goyerv.com/2025/images/trunk-with-parcels.jpg',
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: MediaQuery.of(context).size.width * 0.15, 
                        ),
                      ),
                    ),


                    sbhavg,



                    Text(
                      '''Unfinished requests can present complex challenges within the Goyerv ecosystem, especially due to its peer-to-peer nature and the dynamic relationship between Runners and Customers. Whether a request was auto-terminated due to time expiration or canceled within a permissible window, understanding how to handle such situations properly is vital for maintaining trust, accountability, and platform integrity.\n\nFor logistics requests, auto-termination occurs when the Runner fails to complete the delivery within the duration specified by the Customer. Upon expiry of the set time, Goyerv's system automatically considers the request incomplete and refunds the funds allocated for that request back to the Customer. While this automated protection ensures fairness to Customers, it can leave the Runner in possession of a parcel without the means to unlock their wallet or receive payment—particularly if their wallet had been locked for the duration of the run.\n\nIn such cases, the Runner must take the initiative to communicate with the Customer. If the delivery is eventually completed after the request has been auto-terminated, only the Customer can manually acknowledge completion by clicking the "Pay" button on the request card. This action not only releases the agreed payment to the Runner but also unlocks the Runner’s wallet, if it was locked. It is important to understand that this button can only be clicked twice: once when the request is completed on time, and once after an auto-termination if the Runner later completes the run.\n\nIf the Customer and Runner agree on a different compensation figure due to delays or partial completion, they can use the Transfer feature within the Goyerv app to exchange funds directly. This feature is particularly useful in cases where the original request terms have changed or when resolving minor disputes amicably. If no consensus is reached between the parties, both are encouraged to escalate the issue to Goyerv support for resolution. Documentation such as photos, receipts, and chat logs should be preserved and submitted to support to aid in fair arbitration.\n\nDelivery requests also face their own unique risks when unfinished. In these cases, Customers have the right to terminate a request voluntarily, but only within a window defined by Goyerv policy. If a customer terminates the request after 30% of the set duration has elapsed, and the Runner had already purchased the requested items, Goyerv automatically compensates the Runner if compensation terms had been established when the request was accepted. However, if the termination occurs before that 30% threshold, Goyerv does not enforce any payment to the Runner.\n\nThis means Runners must exercise caution before making any purchases during a delivery run. If the Customer decides to cancel early and the Runner has already bought the items, the most advisable course of action is for the Runner to attempt to return the goods and retain any receipts or proof of purchase. These can later be used as evidence if the Runner believes the termination was done in bad faith. In such cases, contacting Goyerv support becomes essential. Support will assess the situation on a case-by-case basis, using the documentation provided.\n\nUnlike delivery runs, logistics requests cannot be manually terminated by Customers. All terminations in logistics requests are system-generated and strictly tied to the expiration of the allotted duration. Both delivery and logistics requests, however, can be auto-terminated. The key difference is in how they are handled post-termination and what options are available to both parties for resolution.\n\nHandling unfinished requests on Goyerv requires clear communication, careful record-keeping, and a firm understanding of platform policies. Runners are strongly advised to monitor the duration of each request closely and aim to complete their tasks within the time initially agreed upon. When handling delivery runs, it's important to avoid making purchases too early unless they are confident the request will not be canceled, particularly before the 30% time mark. Retaining receipts, original packaging, and communication logs for any purchases made can serve as vital evidence in the event of a dispute. In the case of auto-terminated logistics requests, runners should be aware that only the customer has the ability to reactivate payment by clicking the "Pay" button after the request expires. If both parties agree to proceed with payment after termination, they are expected to use Goyerv’s Transfer feature to complete the transaction manually. However, if no mutual agreement can be reached, both runner and customer are encouraged to contact support and present relevant documentation for assistance. By adhering to these practices, runners can protect themselves, ensure they are fairly compensated, and help maintain the reliability and integrity of the Goyerv platform for everyone involved.\n\n\n
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