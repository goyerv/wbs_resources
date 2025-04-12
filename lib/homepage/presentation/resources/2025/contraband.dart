// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'package:flutter/material.dart';
import 'package:footer/footer_view.dart';
import 'package:share_plus/share_plus.dart';

import '../../../../web_core/global_fields/fields.dart';
import '../../../../widget/presentation/states/widget.dart';


class Contraband extends StatefulWidget {
  
  const Contraband({Key? key}) : super(key: key);

  @override
  State<Contraband> createState() => _ContrabandState();

}



class _ContrabandState extends State<Contraband> {


  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: Title(
        title: "Goyerv Resources - Contrabands",
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

                    Text("Contrabands", style: Theme.of(context).textTheme.headlineLarge),


                    GestureDetector(
                      onTap: () => Share.share("https://resources.goyerv.com/2025/contrabands.html"),
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
                      The topic of contrabands is crucial for every Goyerv Runner to understand, especially in a world where laws differ not only by country, but often by city, region, or even the type of transportation used. Whether you’re accepting a delivery request at your local bookstore or transporting an international parcel across borders, the onus is on you, the Runner, to ensure the safety and legality of what you're carrying.\n\nContraband refers to any item that is illegal to possess, transport, or deliver under the laws of the country or region you’re operating in. These items may include, but are not limited to, narcotics, certain medications, explosives, weapons, counterfeit goods, and even seemingly harmless items like books, gadgets, or foodstuffs that are restricted in particular territories. What’s considered everyday merchandise in one country might be highly regulated or entirely banned in another. For example, certain political or religious texts might be prohibited in specific countries, while particular dietary supplements could be outlawed due to their ingredients.\n\nOn Goyerv, delivery requests often involve the Runner purchasing an item on behalf of a customer from a store or market. This introduces a particular risk: the customer may request an item that, unbeknownst to the Runner, is classified as contraband. To prevent this, Runners must familiarize themselves with the types of goods banned or restricted in their locality, and remain vigilant when evaluating customer requests. If a customer asks for an item that seems suspicious or unfamiliar, take a moment to research it. If you’re still unsure, decline the request or contact support.\n\nInternational runs present a deeper level of risk and responsibility. When crossing borders, even common items such as certain fruits, cosmetics, or electronics can require special declarations or may be entirely prohibited. In these situations, Runners must always confirm the contents of any parcel they are transporting. Never agree to carry a package that you haven’t inspected or packed yourself. This is a fundamental principle of cross-border delivery safety.\n\nWhenever possible, Runners should be present while the customer packs the parcel—or pack it themselves using the customer’s items. This minimizes the chance of being unknowingly used to transport contraband. It also ensures that the Runner can verify the item’s compliance with the destination country’s customs regulations. Always keep a detailed list of the items being carried, and be honest on any customs declaration forms. Misleading or incomplete declarations can lead to serious legal consequences.\n\nIt is essential for Runners to know the regulatory bodies responsible for transportation, aviation, and border control in their regions. These include, but are not limited to, the Federal Aviation Administration (FAA) and Transportation Security Administration (TSA) in the United States, the Civil Aviation Authority in the UK. Becoming familiar with these agencies and regularly checking their advisories or restricted items lists is a practical way to stay informed.\n\nAdditionally, Runners should understand the difference between absolute contrabands (items that are always illegal) and relative contrabands (items that are legal under certain conditions, such as proper documentation or permits). This understanding can help you navigate gray areas—like transporting high-end electronics that require import duties, or carrying items that need special packaging or certificates.\n\nAnother layer to be aware of is local law enforcement. Even within a single country, laws might differ between states, provinces, or cities. Some regions may have specific rules about transporting controlled substances, such as CBD or alcohol, which are legal in one area but not in another. Ignorance of the law is not a viable defense; therefore, runners should take the time to research and stay updated on regional variations.\n\nGoyerv encourages a zero-tolerance policy toward contraband. If you suspect that a customer is attempting to misuse the platform to deliver illegal goods, report it immediately through the app’s support or security channels. Your report protects not only yourself, but also the Goyerv community and the broader public.\n\nAs a final reminder, your reputation as a Runner is built on trust and reliability. Participating in or ignoring contraband activities, even unintentionally, can damage that trust and result in account suspension or legal repercussions. By remaining cautious, informed, and proactive, you ensure the safety and legality of every run—whether it's across town or across continents.\n\nBeing a responsible Runner means more than just completing requests. It means protecting yourself, your customer, and the integrity of the platform. Learn the rules, ask the right questions, and never take chances when it comes to contraband.\n\n\n
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