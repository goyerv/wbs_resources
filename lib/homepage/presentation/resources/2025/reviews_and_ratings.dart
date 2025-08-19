// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'package:flutter/material.dart';
import 'package:footer/footer_view.dart';
import 'package:share_plus/share_plus.dart';

import '../../../../web_core/global_fields/fields.dart';
import '../../../../widget/presentation/states/widget.dart';


class ReviewsAndRatings extends StatefulWidget {
  
  const ReviewsAndRatings({Key? key}) : super(key: key);

  @override
  State<ReviewsAndRatings> createState() => _ReviewsAndRatingsState();

}



class _ReviewsAndRatingsState extends State<ReviewsAndRatings> {


  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: Title(
        title: "Goyerv Resources - Reviews and Ratings",
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

                    Text("Reviews and Ratings", style: Theme.of(context).textTheme.headlineLarge),

                    sbhmin,

                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () => Share.share("https://resources.goyerv.com/2025/reviews-and-ratings.html"),
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
                          'https://resources.goyerv.com/2025/images/reviews-7b8ab4e8-d0e7-489e-93ea-54e866522818.jpg',
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: MediaQuery.of(context).size.width * 0.15, 
                        ),
                      ),
                    ),

                    sbhavg,


                    Text(
                      '''On Goyerv, reviews are a fundamental part of maintaining a transparent and trustworthy platform. After a request is completed, customers have the opportunity to leave a review for the Runner they engaged with. These reviews are publicly visible and contribute significantly to a Runner’s overall reputation within the platform. This system ensures that feedback is based on actual experience, creating a fair and balanced ecosystem.\n\nOnly customers who have had a direct engagement with a Runner can leave them a review. This means that casual visitors or users without any transactional history cannot influence a Runner’s public profile. In addition to written reviews and star ratings, customers can also express quick feedback using a thumbs up or thumbs down button. The action of giving a thumbs up or down is commonly referred to as "liking" or "disliking" in casual terms, but within the Goyerv context, we simply refer to it as giving a thumbs up or thumbs down. This simplified system helps users quickly understand the general sentiment around a Runner’s performance.\n\nCustomers retain full control over the reviews they leave. They can delete their reviews at any time, but this ability is reserved solely for the reviewer. Runners do not have the capacity to remove reviews from their profile, preserving the authenticity of the feedback system. However, if a Runner believes that a review is unfair, misleading, or violates Goyerv’s guidelines, they have the option to report the review to our support team. Upon review, if the feedback is found to be in breach of community standards or is evidently abusive, appropriate action will be taken.\n\nIt’s important that all reviews are honest and reflect the true experience of the customer. Constructive criticism helps Runners improve, while positive feedback encourages best practices and rewards professionalism. Misleading or dishonest reviews can damage trust and disrupt the integrity of the platform, so we strongly encourage customers to approach reviews with fairness and sincerity.\n\nSo, reviews serve not just as feedback tools but as guideposts for the community. They inform decision-making, enhance accountability, and elevate the overall quality of the Goyerv experience. Whether you're a first-time customer or a seasoned Runner, understanding how the review system works ensures that everyone is contributing to a platform that values transparency and mutual respect.
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