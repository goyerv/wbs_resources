// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'package:flutter/material.dart';
import 'package:footer/footer_view.dart';
import 'package:share_plus/share_plus.dart';

import '../../../../web_core/global_fields/fields.dart';
import '../../../../widget/presentation/states/widget.dart';


class Packaging extends StatefulWidget {
  
  const Packaging({Key? key}) : super(key: key);

  @override
  State<Packaging> createState() => _PackagingState();

}



class _PackagingState extends State<Packaging> {


  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: Title(
        title: "Goyerv Resources - Packaging",
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

                    Text("Packaging", style: Theme.of(context).textTheme.headlineLarge),


                    GestureDetector(
                      onTap: () => Share.share("https://resources.goyerv.com/2025/packaging.html"),
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
                      Proper parcel packaging is one of the most essential yet often overlooked parts of a successful Goyerv request. Whether you're sending a delicate handmade item across borders or asking someone nearby to deliver a hot meal, how the parcel is packaged determines not only the safety of the item but also the trust between customer and runner. Goyerv connects people in a peer-to-peer fashion, which makes shared care and diligence even more important. This article lays out best practices for both customers and runners when preparing and handling parcels for delivery or logistics requests—domestic or international.\n\nPackaging expectations are different depending on the nature of the item, the distance it will travel, and the category of the request (delivery or logistics). For logistics requests, especially those that involve international travel, it’s essential for both customers and runners to understand that parcels may be subject to scrutiny by customs authorities. In some cases, authorities may ask to open a parcel for further inspection. This is not the runner’s fault—it is a standard part of international shipping and border security. To minimize delays or misunderstandings, both parties should discuss in advance how repackaging will be handled in the event that a parcel is opened during transit. It is best to agree on a repackaging method that keeps the item protected but still accessible, if necessary.\n\nCertain parcels may benefit from being packed in transparent bags—particularly small items, personal effects, or documents. Clear packaging allows for faster processing at security checkpoints and can sometimes help avoid the need for manual inspection. When in doubt, research the requirements of the airport or port authorities relevant to the route in question. For air travel, especially, runners should be familiar with the customs and aviation security agencies in their countries—such as the TSA (Transportation Security Administration) in the U.S. or the FAA (Federal Aviation Administration). These agencies often publish guidelines that can help runners understand what can and cannot be transported, and how best to package certain items.\n\nFragile items such as glassware, electronics, ceramics, or delicate crafts should be wrapped with extra care. Bubble wrap, foam padding, or secure boxing should be used to cushion the item and protect it from shocks during transit. Simply placing a fragile item in a paper bag or thin plastic wrap is not enough. Whether you’re the customer preparing the parcel or the runner helping to finalize the packaging before a flight, always ask yourself: If this were dropped from waist height, would it survive the fall? If not, it needs more protection.\n\nGoyerv packaging label. This label must be printed and affixed to the parcel. It contains critical information for the runner, including the destination address, the recipient’s name and contact details, and the expected delivery time. Customers should never skip this step. If you don’t have access to a printer, coordinate with the runner to make sure the label is printed and properly attached before handoff. Without it, confusion may arise—especially in high-traffic areas like airports or border crossings. A clearly labeled package makes the entire journey more efficient and secure.\n\nNow let’s talk about delivery requests. These are typically same-day or near-real-time errands where a runner is asked to pick up something from a store or restaurant and bring it to the customer. In this context, packaging matters just as much. For instance, if a customer is ordering a hot meal—such as grilled meat, soup, or rice—how the runner transports it can mean the difference between a satisfying delivery and a frustrating experience. While Goyerv does not currently provide branded thermal bags, we strongly encourage runners to handle prepared meals and groceries with the same care they would expect for their own orders. Avoid tilting or stacking containers that could spill. Use reusable carriers if possible. If you’re delivering groceries, don’t mix cold and warm items, and always protect items like bread or eggs from being crushed.\n\nRunners who consistently demonstrate attention to detail in how they handle and package items often receive higher ratings and more repeat requests. It's a reflection of professionalism and a powerful way to build a personal brand on the platform. Likewise, customers who package their parcels thoughtfully and with clear labeling help build a system that works more efficiently for everyone involved. Small decisions—like sealing a lid properly or using extra tape on a cardboard box—can go a long way in preventing accidents or delays.\n\nIn all cases, communication is key. Customers and runners should maintain a dialogue about the nature of the parcel, its sensitivity, and any specific care instructions. Runners should never feel pressured to accept a parcel that isn’t properly sealed or labeled, and customers should always feel comfortable requesting updates during transit.\n\nPackaging isn’t just a technical step—it’s a shared act of trust and responsibility. Whether you’re preparing a gift for international delivery or handing off a bag of fresh groceries to a neighbor, doing it thoughtfully ensures that Goyerv remains a platform built on reliability, safety, and respect.\n\n\n
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