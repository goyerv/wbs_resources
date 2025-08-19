// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'package:flutter/material.dart';
import 'package:footer/footer_view.dart';
import 'package:share_plus/share_plus.dart';

import '../../../../web_core/global_fields/fields.dart';
import '../../../../widget/presentation/states/widget.dart';


class CustomsDeclaration extends StatefulWidget {
  
  const CustomsDeclaration({Key? key}) : super(key: key);

  @override
  State<CustomsDeclaration> createState() => _CustomsDeclarationState();

}



class _CustomsDeclarationState extends State<CustomsDeclaration> {


  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: Title(
        title: "Goyerv Resources - Customs Declaration",
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

                    Text("Customs Declaration", style: Theme.of(context).textTheme.headlineLarge),

                    sbhmin,

                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () => Share.share("https://resources.goyerv.com/2025/customs-declaration.html"),
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
                          'https://resources.goyerv.com/2025/images/Travel-News_-Why-You-Need-to-Fly-With-Global-Entry-Save-on-NYC.jpg',
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: MediaQuery.of(context).size.width * 0.15, 
                        ),
                      ),
                    ),

                    sbhavg,


                    Text(
                      '''Declaring items at customs is a critical responsibility for any Runner involved in international logistics on Goyerv. Proper declaration not only ensures the legal transport of goods across borders but also safeguards the Runner from unexpected penalties, delays, or legal issues. Each country operates under its own customs regulations, and understanding the nuances of these rules is essential for a smooth transit experience.\n\nThe process of declaring items begins before you even arrive at the airport. It starts with a thorough understanding of the contents of the parcel you are carrying. You should never agree to transport an item without full knowledge of what’s inside. If possible, be physically present when the package is being packed or, better yet, handle the packaging yourself after inspecting the contents. This practice not only provides clarity but also serves as a layer of protection in case authorities question the legitimacy or safety of the item.\n\nIt is vital to research the customs regulations of both the departing and destination countries. Different countries have different thresholds for what needs to be declared, and some may have bans on specific items—even items that might be considered harmless elsewhere. For example, certain medications, food products, cultural artifacts, or even specific books may be restricted. Some items might be taxed heavily, while others might be outright prohibited. Familiarizing yourself with the official customs websites of the countries involved or consulting their respective customs authorities can help prevent last-minute complications.\n\nUpon arriving at the airport, give yourself enough time to handle customs processes properly. Rushing through a declaration or arriving late can lead to oversight or mistakes, which may be costly. Being early allows you to confidently approach customs officers, fill out the necessary forms with accuracy, and respond to any additional questions they may have. When in doubt, it’s better to over-declare than under-declare. Transparency is often looked upon favorably and shows that you’re acting in good faith.\n\nWhen completing your customs declaration form—either on paper or electronically—list all relevant details clearly: the nature of the item, its quantity, its value, and the purpose for which you are carrying it. If the item is a gift or a commercial product, specify this as well. It’s always advisable to keep receipts or proof of purchase for the items being transported, especially for high-value goods. This documentation can help customs officers assess the value correctly and minimize scrutiny.\n\nYou should also be prepared to answer any questions about the item’s origin and final destination. In some cases, customs may ask for contact details of the sender and recipient or request additional documentation. Cooperate respectfully and confidently. If the item is detained or flagged for inspection, remain calm and comply with all instructions. Customs processes are not always seamless, but demonstrating patience and professionalism goes a long way.\n\nIt’s important to remember that customs laws are dynamic and may change due to shifts in policy, health concerns, or diplomatic relations. For that reason, even seasoned Runners should double-check the rules before every international trip. What was permissible last year may now be restricted, and ignorance of the law is not considered a valid defense.\n\nIn some countries, customs authorities like the TSA (Transportation Security Administration) in the United States or the FAA (Federal Aviation Administration) may have overlapping jurisdiction on security-related items. Understanding which agency oversees what aspect of regulation helps you prepare better and route your questions effectively. In regions without centralized online resources, consider calling the airport directly or visiting a consulate for clarity.\n\nDeclaring items properly at customs is not just about following rules—it’s about protecting yourself and the Goyerv community. It reinforces the professionalism of our platform and sets a standard of transparency that encourages more people to trust and participate in peer-to-peer logistics. By treating customs declaration as a non-negotiable step in your process, you build a reputation for reliability and integrity across borders.\n\n\n''',
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