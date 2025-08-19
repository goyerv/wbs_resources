// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'package:flutter/material.dart';
import 'package:footer/footer_view.dart';
import 'package:share_plus/share_plus.dart';

import '../../../../web_core/global_fields/fields.dart';
import '../../../../widget/presentation/states/widget.dart';


class ThingsYouShouldKnowAsARunner extends StatefulWidget {
  
  const ThingsYouShouldKnowAsARunner({Key? key}) : super(key: key);

  @override
  State<ThingsYouShouldKnowAsARunner> createState() => _ThingsYouShouldKnowAsARunnerState();

}



class _ThingsYouShouldKnowAsARunnerState extends State<ThingsYouShouldKnowAsARunner> {


  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: Title(
        title: "Goyerv Resources - Things You Should Know As A Runner",
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

                    Text("Things You Should Know As A Runner", style: Theme.of(context).textTheme.headlineLarge),

                    sbhmin,


                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () => Share.share("https://resources.goyerv.com/2025/things-you-should-know-as-a-runner.html"),
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
                          'https://resources.goyerv.com/2025/images/Bustling-Night-Market.jpg',
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: MediaQuery.of(context).size.width * 0.15, 
                        ),
                      ),
                    ),

                    sbhavg,



                    Text(
                      '''Being a Runner on Goyerv is more than a side hustle; it is a responsibility that blends reliability, discretion, and efficiency. The role of a Runner sits at the heart of the Goyerv ecosystem, enabling users to bridge distances, access goods, and fulfill logistical needs with ease. Whether you're facilitating a local delivery or transporting a package across borders, the job requires awareness, professionalism, and informed decision-making. This guide outlines essential things every Runner should know before accepting and executing requests on the Goyerv platform.\n\nOn Goyerv, requests are broadly categorized into two main types: delivery and logistics. Delivery requests are initiated when a Runner is physically present at a location, such as a supermarket, restaurant, or retail store, and a customer wishes to purchase something from that location. In this scenario, the Runner acts as a proxy buyer, selecting and purchasing the requested item, then delivering it to the customer. This is distinct from logistics requests, where the Runner is responsible for transporting a package or item from one point to another, often over longer distances and sometimes internationally. Understanding this distinction is fundamental, as it determines how the Runner prepares for the task, communicates with the customer, and manages potential risks.\n\nDelivery runs may appear simple, but they demand a high level of attentiveness and communication. Since the Runner is often buying items on behalf of the customer, clarity is crucial. Runners should always confirm the exact product specifications before making a purchase—brand, size, quantity, color, and price should be verified to avoid any disputes. In many cases, customers will send photos or detailed descriptions; it is advisable to double-check and reconfirm these details in the Goyerv chat. Finally, maintaining open communication with the customer regarding wait times, item availability, and changes in pricing helps manage expectations and prevent misunderstandings.\n\nFor logistics requests, the Runner’s role shifts from buyer to transporter. The key responsibility is to ensure that the item reaches its destination in the same condition it was received. One of the first considerations before accepting a logistics request is to evaluate the nature of the item: its size, weight, fragility, and any specific handling instructions. The Runner should also assess the travel route, expected delivery timeframe, and any permissions or authorizations needed for transportation. When handling high-value or fragile items, additional precautions such as reinforced packaging or insurance may be necessary.\n\nInternational logistics runs require a heightened level of diligence and preparation. Runners may feel hesitant to accept cross-border tasks due to safety or legal concerns, and such caution is justified. The safest way to conduct international deliveries is to have full knowledge of the parcel’s contents. Whenever possible, Runners should either participate in the packing process or personally inspect and repack the item in the customer’s presence. Accepting sealed packages without knowing what’s inside can pose significant legal risks, especially at customs checkpoints. It is essential to remember that, regardless of intent, the individual in possession of the item is held accountable for its contents.\n\nMoreover, international logistics runs require coordinated drop-off arrangements in the destination country. Both the Runner and the customer must agree in advance on where, when, and to whom the item will be delivered. This includes confirming the recipient’s full name, contact details, and any identification required for pickup. Miscommunication or lack of planning at this stage can lead to complications, delays, and in some cases, disputes over non-delivery. The Runner should also take into account the regulations of the receiving country, including prohibited items, customs duties, and declaration requirements. A proactive approach to compliance ensures smoother transit and protects the Runner from potential penalties.\n\nProfessionalism is a cornerstone of successful Runners on the Goyerv platform. From the moment a request is accepted to the final handover, Runners are expected to uphold high standards in communication, appearance, and conduct. Punctuality is essential—delays should be communicated immediately and with an estimated arrival time. If unexpected issues arise, such as difficulty finding the delivery address or encountering traffic, informing the customer shows reliability and courtesy. Runners should avoid engaging in informal or off-platform conversations that may undermine the structure and protections offered by Goyerv’s systems.\n\nSafety should always remain a priority, especially when interacting with unfamiliar customers or navigating through high-traffic or unfamiliar areas. Trusting one’s instincts is important; if a situation feels uncomfortable or suspicious, the Runner has every right to decline or discontinue the request. Additionally, Runners should familiarize themselves with common red flags, such as vague package descriptions, reluctance from the customer to disclose item contents, or inconsistent instructions. Goyerv offers support channels for reporting and resolving such concerns, and utilizing these tools helps maintain a secure environment for all users.\n\nProper documentation is another critical element in the Runner’s toolkit. It is advisable to photograph the item before pickup, after packing, and upon delivery. Keeping screenshots of customer conversations and saving receipts or tracking numbers can serve as valuable evidence in case of disputes. When a request involves expensive or sensitive goods, the Runner should suggest using delivery confirmation features or digital signatures to verify receipt. Documentation not only protects the Runner but also reinforces the trustworthiness of the Goyerv platform.\n\nParcel packaging, though often overlooked, plays a major role in logistics success. Runners should be prepared with basic packaging materials such as tape, bubble wrap, and boxes. For delicate or breakable items, cushioning and tight sealing help prevent damage. If the customer is responsible for packaging, the Runner should inspect the parcel for adequacy and request repacking if necessary. A well-packaged item reflects care and professionalism, reducing the likelihood of customer complaints or negative reviews.\n\nMaintaining a strong reputation on Goyerv is beneficial for long-term success. Ratings and reviews provide valuable feedback, and consistently positive experiences can lead to customer loyalty, repeat requests, and higher tips. Responding to reviews—both positive and negative—with professionalism shows maturity and willingness to improve. Runners should view feedback as an opportunity to refine their service and better understand user expectations.\n\nBeing a Runner on Goyerv requires much more than simply moving packages or making purchases. It demands a combination of vigilance, clear communication, ethical responsibility, and commitment to customer satisfaction. Whether operating within your city or across international borders, adhering to best practices ensures a smooth experience for both Runners and customers. By equipping yourself with the right knowledge and mindset, you not only protect yourself but also contribute to the growing trust and efficiency of the Goyerv community.\n\n\n''',
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