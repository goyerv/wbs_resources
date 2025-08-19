// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'package:flutter/material.dart';
import 'package:footer/footer_view.dart';
import 'package:share_plus/share_plus.dart';

import '../../../../web_core/global_fields/fields.dart';
import '../../../../widget/presentation/states/widget.dart';


class PersonalProtectionDuringRuns extends StatefulWidget {
  
  const PersonalProtectionDuringRuns({Key? key}) : super(key: key);

  @override
  State<PersonalProtectionDuringRuns> createState() => _PersonalProtectionDuringRunsState();

}



class _PersonalProtectionDuringRunsState extends State<PersonalProtectionDuringRuns> {


  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: Title(
        title: "Goyerv Resources - Personal Protection During Runs",
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

                    Text("Personal Protections During Runs", style: Theme.of(context).textTheme.headlineLarge),

                    sbhmin,


                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () => Share.share("https://resources.goyerv.com/2025/personal-protection-during-runs.html"),
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
                          'https://resources.goyerv.com/2025/images/Grocery-shopping-with-a-bike-no-prob.jpg',
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: MediaQuery.of(context).size.width * 0.15, 
                        ),
                      ),
                    ),

                    sbhavg,



                    Text(
                      '''Running errands for others, whether it's picking up a delivery from a store or transporting a parcel across towns or borders, requires more than just punctuality and a good sense of direction. On Goyerv, the well-being of Runners is essential, and part of that commitment involves understanding how to protect yourself during every phase of a request. "Personal protections during requests" refers to a wide array of practices and precautions that help Runners stay physically safe, financially secure, and legally covered. This guide provides a comprehensive overview of the steps every Runner should consider when engaging in any type of delivery or logistics request on the Goyerv platform.\n\nFirst and foremost is physical safety. Runners should always prioritize their personal security when meeting clients, entering new neighborhoods, or making deliveries at unfamiliar locations. If a meeting point seems remote or unsafe, it’s acceptable to suggest a more public and well-lit location. Always trust your instincts—if something feels off about the interaction, location, or item involved, you are not obligated to proceed. Goyerv encourages Runners to maintain clear communication via the app, avoiding off-platform arrangements that bypass the safety mechanisms built into the system. In case of emergencies or threats, Runners should not hesitate to contact local authorities and report the incident to Goyerv support as soon as it is safe to do so.\n\nA major aspect of personal protection also involves transparency and documentation. Runners should never accept sealed or unverified packages without knowing the contents, especially for logistics or international requests. Always ask the sender to disclose what is being transported, and if possible, request to observe the packaging process or repack the item yourself. Taking photos of the parcel and recording details such as weight, dimensions, and external markings can serve as a safety net in case of disputes or inspections at checkpoints. For international runs, ensure the item complies with customs laws and is not prohibited or restricted in either the origin or destination country.\n\nVerifying the identity of the customer or recipient is another crucial step in protecting yourself. Goyerv supports identity confirmation features, and Runners should use them whenever available. Before making a handoff, confirm the recipient's name and, if agreed upon, request an ID or use the platform’s built-in confirmation tools. Never deliver a parcel to someone who cannot verify their identity, especially if the parcel contains valuables or sensitive materials.\n\nFinancial protection is equally important. Runners should avoid making purchases or incurring expenses for a customer unless terms of reimbursement have been clearly outlined and agreed upon in the app. For delivery requests, clarify whether you will be refunded upon delivery or if the customer is prepaying. Use Goyerv’s secure communication and payment systems to log every transaction. Keep receipts and, if possible, send a photo of the receipt to the customer after the purchase. This creates a transparent trail that can be referenced in the event of any disputes.\n\nGoyerv also recommends setting clear boundaries around time and task limits. Every request should include an estimated duration, and both parties should stick to it. If a customer continually extends the deadline or adds more tasks outside the agreed scope, Runners are within their rights to decline. Time tracking protects your schedule and ensures that compensation aligns with the work involved.\n\nAnother critical layer of protection is staying up to date with local laws and platform policies. Runners operating across regions should familiarize themselves with transportation and delivery regulations, especially when handling controlled or restricted items. Goyerv provides regular updates and guidelines through its Resources site, and taking the time to review these materials will help you operate within legal bounds.\n\nPersonal health protection should not be overlooked, particularly for Runners making multiple stops or entering crowded locations. Wear appropriate clothing, carry hand sanitizer, and avoid overexertion—especially when transporting heavy items. If you're using a vehicle, ensure it’s well-maintained, and take breaks as needed to avoid fatigue. Runners are advised to keep emergency contacts saved on their phones and share their real-time trip progress with a trusted person when possible.\n\nFinally, emotional and psychological safety is an often-neglected but essential component of personal protection. Dealing with difficult clients, last-minute changes, or stressful deadlines can take a toll. It's important to practice stress management, take breaks between runs, and report any abuse, harassment, or unfair treatment through the Goyerv support system. Your peace of mind matters as much as your physical safety.\n\nPersonal protection during requests is a holistic practice that encompasses physical, financial, legal, and emotional safeguards. By staying informed, communicating clearly, and using the tools available through Goyerv, Runners can confidently complete requests while minimizing risk. Every delivery or logistics run is a shared trust between you and the customer—ensuring your own protection is the first step in honoring that trust.\n\n''',
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