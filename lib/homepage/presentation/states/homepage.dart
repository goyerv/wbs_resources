// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'package:flutter/material.dart';
import 'package:footer/footer_view.dart';
import 'package:go_router/go_router.dart';

import '../../../widget/presentation/states/widget.dart';




class Homepage extends StatefulWidget {
  
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();

}



class _HomepageState extends State<Homepage> {

    // List of posts for easier management (add more deets here if you want)
    final List<Map<String, dynamic>> posts = [
      {
        'title': 'Things You Should Know As A Runner',
        'image': 'https://resources.goyerv.com/2025/images/Bustling-Night-Market.jpg',
        'teaser': 'Delivery runs may appear simple, but they demand a high level of attentiveness and communication. Since the Runner is often buying items on behalf of the customer, clarity is crucial.',
        'date': 'Aug 18, 2025',
        'readTime': '5 min read',
        'route': '/2025/things-you-should-know-as-a-runner',
      },
      {
        'title': 'Building A Personal Brand',
        'image': 'https://resources.goyerv.com/2025/images/Our-set-of-three-large-tote-bags-can-hold-as-much.jpg',
        'teaser': 'There’s also an opportunity to develop a niche. Some runners specialize in certain categories—groceries, electronics, international deliveries—and become go-to experts for those needs',
        'date': 'July 23, 2025',
        'readTime': '2 min read',
        'route': '/2025/building-a-personal-brand',
      },
      {
        'title': 'Contraband',
        'image': 'https://resources.goyerv.com/2025/images/Varito-SF5636-X-Ray-Baggage-Scanner.jpg',
        'teaser': 'These items may include, but are not limited to, narcotics, certain medications, explosives, weapons, counterfeit goods, and even seemingly harmless items like books, gadgets, or foodstuffs that are restricted in particular territories',
        'date': 'June 4, 2025',
        'readTime': '5 min read',
        'route': '/2025/contraband',
      },
      {
        'title': 'Customs Declaration',
        'image': 'https://resources.goyerv.com/2025/images/Travel-News_-Why-You-Need-to-Fly-With-Global-Entry-Save-on-NYC.jpg',
        'teaser': 'For example, certain medications, food products, cultural artifacts, or even specific books may be restricted. Some items might be taxed heavily, while others might be outright prohibited.',
        'date': 'June 4, 2025',
        'readTime': '4 min read',
        'route': '/2025/customs-declaration',
      },
      {
        'title': 'Packaging',
        'image': 'https://resources.goyerv.com/2025/images/Parcel-Ready-Perforated.jpg',
        'teaser': "Whether you're sending a delicate handmade item across borders or asking someone nearby to deliver a hot meal, how the parcel is packaged determines not only the safety of the item but also the trust between customer and runner.",
        'date': 'May 25, 2025',
        'readTime': '3 min read',
        'route': '/2025/packaging',
      },
      {
        'title': 'Personal Protection During Runs',
        'image': 'https://resources.goyerv.com/2025/images/Grocery-shopping-with-a-bike-no-prob.jpg',
        'teaser': "Verifying the identity of the customer or recipient is another crucial step in protecting yourself.",
        'date': 'May 23, 2025',
        'readTime': '2 min read',
        'route': '/2025/personal-protection-during-runs',
      },
      {
        'title': 'Prohibited Requests',
        'image': 'https://resources.goyerv.com/2025/images/morocco-outside-the-bazaar-in-Marrakech.jpg',
        'teaser': "Requests involving volatile chemicals, biological samples, sharp or exposed metal objects, or any item that poses a health or safety risk during transportation are not allowed.",
        'date': 'April 19, 2025',
        'readTime': '3 min read',
        'route': '/2025/prohibited-requests',
      },
      {
        'title': 'Reviews and Ratings',
        'image': 'https://resources.goyerv.com/2025/images/reviews-7b8ab4e8-d0e7-489e-93ea-54e866522818.jpg',
        'teaser': "It’s important that all reviews are honest and reflect the true experience of the customer.",
        'date': 'February 9, 2025',
        'readTime': '1 min read',
        'route': '/2025/reviews-and-ratings',
      },
      {
        'title': 'Best Practices',
        'image': 'https://resources.goyerv.com/2025/images/Best-Bike-Logistics-Company-in-Lagos-2024.jpg',
        'teaser': "One of the more nuanced practices is managing customer expectations.",
        'date': 'February 9, 2025',
        'readTime': '5 min read',
        'route': '/2025/best-practices',
      },
      {
        'title': 'Handling Uncompleted Requests',
        'image': 'https://resources.goyerv.com/2025/images/trunk-with-parcels.jpg',
        'teaser': "Runners are strongly advised to monitor the duration of each request closely and aim to complete their tasks within the time initially agreed upon.",
        'date': 'January 23 , 2025',
        'readTime': '4 min read',
        'route': '/2025/handling-uncompleted-requests',
      },
    ];


  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    int crossAxisCount = screenWidth > 1200 ? 3 : screenWidth > 800 ? 2 : 1;
    double padding = screenWidth >= 800 ? 50.0 : 16.0;
    const gridSpacing = 30.0;
    
    // estimate a comfy card height per breakpoint
    final cardHeight = screenWidth > 1200
        ? 360.0
        : screenWidth > 800
            ? 340.0
            : 300.0;
    
    // compute card width and aspect ratio (width / height)
    final gridWidth = screenWidth - (padding * 2);
    final cardWidth =
        (gridWidth - (gridSpacing * (crossAxisCount - 1))) / crossAxisCount;
    final childAspectRatio = cardWidth / cardHeight;


    return Scaffold(
      appBar: appBar(context),
      body: Title(
        title: "Goyerv - Bulletin",
        color: Theme.of(context).primaryColor,
        child: Container(
          width: MediaQuery.of(context).size.width,
          color: Theme.of(context).primaryColor,
          child: FooterView(
            footer: footer(context),
            flex: 8,
            children: [
              Padding(
                padding: EdgeInsets.all(padding),
                child: GridView.count(
                  shrinkWrap: true, // To fit inside the column
                  physics: NeverScrollableScrollPhysics(), // No scroll, let parent handle
                  crossAxisCount: crossAxisCount,
                  crossAxisSpacing: gridSpacing,
                  mainAxisSpacing: gridSpacing,
                  childAspectRatio: childAspectRatio,
                  children: posts.map((post) {
                    return MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () => context.push(post['route']),
                        child: Card(
                          elevation: 2, // Slight glow-up shadow
                          shadowColor: Colors.grey.withOpacity(0.5),
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(color: Colors.grey, width: 0.5),
                            borderRadius: BorderRadius.circular(12.0), // Softer corners
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              if (post['image'] != null)
                                ClipRRect(
                                  borderRadius: const BorderRadius.vertical(top: Radius.circular(0)), 
                                  child: Image.network(
                                    post['image'],
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                    height: screenWidth * 0.15, 
                                  ),
                                ),

                              Padding(
                                padding: const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 4.0),
                                child: Text(
                                  post['title'],
                                  style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.left,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 8.0),
                                child: Text(
                                  post['teaser'],
                                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.grey[700]),
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 16.0),
                                child: Row(
                                  children: [
                                    Icon(Icons.calendar_today_outlined, size: 14, color: Colors.grey),
                                    SizedBox(width: 4),
                                    Text(
                                      '${post['date']} • ${post['readTime']}',
                                      style: TextStyle(color: Colors.grey, fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }



} 
