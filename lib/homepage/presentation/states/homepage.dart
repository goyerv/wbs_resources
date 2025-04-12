// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'package:flutter/material.dart';
import 'package:footer/footer_view.dart';

import '../../../web_core/global_fields/fields.dart';
import '../../../widget/presentation/states/widget.dart';
import '../resources/2025/best_practices.dart';
import '../resources/2025/building_a_personal_brand.dart';
import '../resources/2025/contraband.dart';
import '../resources/2025/customs_declaration.dart';
import '../resources/2025/packaging.dart';
import '../resources/2025/personal_protection.dart';
import '../resources/2025/prohibited_requests.dart';
import '../resources/2025/reviews_and_ratings.dart';
import '../resources/2025/things_you_should_know_as_a_runner.dart';
import '../resources/2025/unfinished_requests.dart';



class Homepage extends StatefulWidget {
  
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();

}



class _HomepageState extends State<Homepage> {





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: Title(
        title: "Goyerv - Resources",
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


                    Wrap(
                      spacing: 30.0,
                      runSpacing: 30.0,
                      alignment: WrapAlignment.spaceEvenly,
                      children: [


                        GestureDetector(
                          onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (builder) => const ThingsYouShouldKnowAsARunner())),
                          child: Container(
                            width: MediaQuery.of(context).size.width >= 800? MediaQuery.of(context).size.width * 0.45 : MediaQuery.of(context).size.width * 0.7,
                            height: MediaQuery.of(context).size.width * 0.45,
                            color: Theme.of(context).primaryColor,
                            decoration: BoxDecoration(border: Border.all(color: grey, width: 0.8), borderRadius: BorderRadius.circular(10.0)),
                            child: Column(
                              children: [
                          
                                Expanded(
                                  flex: 74,
                                  child: Image.network("https://resources.goyerv.com/2025/images/Bustling Night Market.jpg", fit: BoxFit.cover, width: double.infinity)
                                ),
                          
                          
                                Expanded(
                                  flex: 23,
                                  child: Text("\nThings You Should Know As A Runner\n", style: Theme.of(context).textTheme.titleLarge),
                                ),
                          
                          
                              ],
                            ),
                          ),
                        ),




                        GestureDetector(
                          onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (builder) => const BuildingAPersonalBrand())),
                          child: Container(
                            width: MediaQuery.of(context).size.width >= 800? MediaQuery.of(context).size.width * 0.45 : MediaQuery.of(context).size.width * 0.7,
                            height: MediaQuery.of(context).size.width * 0.45,
                            color: Theme.of(context).primaryColor,
                            decoration: BoxDecoration(border: Border.all(color: grey, width: 0.8), borderRadius: BorderRadius.circular(10.0)),
                            child: Column(
                              children: [
                          
                                Expanded(
                                  flex: 72,
                                  child: Image.network("https://resources.goyerv.com/2025/images/Our set of three large tote bags can hold as much.jpg", fit: BoxFit.cover, width: double.infinity)
                                ),
                          
                          
                                Expanded(
                                  flex: 23,
                                  child: Text("\nBuilding A Personal Brand\n", style: Theme.of(context).textTheme.titleLarge),
                                ),
                          
                          
                              ],
                            ),
                          ),
                        ),





                        GestureDetector(
                          onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (builder) => const Contraband())),
                          child: Container(
                            width: MediaQuery.of(context).size.width >= 800? MediaQuery.of(context).size.width * 0.45 : MediaQuery.of(context).size.width * 0.7,
                            height: MediaQuery.of(context).size.width * 0.45,
                            color: Theme.of(context).primaryColor,
                            decoration: BoxDecoration(border: Border.all(color: grey, width: 0.8), borderRadius: BorderRadius.circular(10.0)),
                            child: Column(
                              children: [
                          
                                Expanded(
                                  flex: 68,
                                  child: Image.network("https://resources.goyerv.com/2025/images/Varito SF5636 X-Ray Baggage Scanner.jpg", fit: BoxFit.cover, width: double.infinity)
                                ),
                          
                          
                                Expanded(
                                  flex: 20,
                                  child: Text("\nContraband\n", style: Theme.of(context).textTheme.titleLarge),
                                ),
                          
                          
                              ],
                            ),
                          ),
                        ),



                        GestureDetector(
                          onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (builder) => const CustomsDeclaration())),
                          child: Container(
                            width: MediaQuery.of(context).size.width >= 800? MediaQuery.of(context).size.width * 0.45 : MediaQuery.of(context).size.width * 0.7,
                            height: MediaQuery.of(context).size.width * 0.45,
                            color: Theme.of(context).primaryColor,
                            decoration: BoxDecoration(border: Border.all(color: grey, width: 0.8), borderRadius: BorderRadius.circular(10.0)),
                            child: Column(
                              children: [
                          
                                Expanded(
                                  flex: 68,
                                  child: Image.network("https://resources.goyerv.com/2025/images/Travel News_ Why You Need to Fly With Global Entry, Save on NYC.jpg", fit: BoxFit.cover, width: double.infinity)
                                ),
                          
                          
                                Expanded(
                                  flex: 20,
                                  child: Text("\nCustoms Declaration\n", style: Theme.of(context).textTheme.titleLarge),
                                ),
                          
                          
                              ],
                            ),
                          ),
                        ),




                        GestureDetector(
                          onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (builder) => const Packaging())),
                          child: Container(
                            width: MediaQuery.of(context).size.width >= 800? MediaQuery.of(context).size.width * 0.45 : MediaQuery.of(context).size.width * 0.7,
                            height: MediaQuery.of(context).size.width * 0.45,
                            color: Theme.of(context).primaryColor,
                            decoration: BoxDecoration(border: Border.all(color: grey, width: 0.8), borderRadius: BorderRadius.circular(10.0)),
                            child: Column(
                              children: [
                          
                                Expanded(
                                  flex: 68,
                                  child: Image.network("https://resources.goyerv.com/2025/images/Parcel Ready Perforated.jpg", fit: BoxFit.cover, width: double.infinity)
                                ),
                          
                                Expanded(
                                  flex: 20,
                                  child: Text("\nPackaging\n", style: Theme.of(context).textTheme.titleLarge),
                                ),
                          
                          
                              ],
                            ),
                          ),
                        ),





                        GestureDetector(
                          onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (builder) => const PersonalProtectionDuringRuns())),
                          child: Container(
                            width: MediaQuery.of(context).size.width >= 800? MediaQuery.of(context).size.width * 0.45 : MediaQuery.of(context).size.width * 0.7,
                            height: MediaQuery.of(context).size.width * 0.45,
                            color: Theme.of(context).primaryColor,
                            decoration: BoxDecoration(border: Border.all(color: grey, width: 0.8), borderRadius: BorderRadius.circular(10.0)),
                            child: Column(
                              children: [
                          
                                Expanded(
                                  flex: 68,
                                  child: Image.network("https://resources.goyerv.com/2025/images/Grocery shopping with a bike, no prob.jpg", fit: BoxFit.cover, width: double.infinity)
                                ),
                          
                                Expanded(
                                  flex: 20,
                                  child: Text("\nPersonal Protection During Runs\n", style: Theme.of(context).textTheme.titleLarge),
                                ),
                          
                          
                              ],
                            ),
                          ),
                        ),





                        GestureDetector(
                          onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (builder) => const ProhibitedRequests())),
                          child: Container(
                            width: MediaQuery.of(context).size.width >= 800? MediaQuery.of(context).size.width * 0.45 : MediaQuery.of(context).size.width * 0.7,
                            height: MediaQuery.of(context).size.width * 0.45,
                            color: Theme.of(context).primaryColor,
                            decoration: BoxDecoration(border: Border.all(color: grey, width: 0.8), borderRadius: BorderRadius.circular(10.0)),
                            child: Column(
                              children: [
                          
                                Expanded(
                                  flex: 68,
                                  child: Image.network("https://resources.goyerv.com/2025/images/morocco, outside the bazaar in Marrakech.jpg", fit: BoxFit.cover, width: double.infinity)
                                ),
                          
                                Expanded(
                                  flex: 20,
                                  child: Text("\nProhibited Requests\n", style: Theme.of(context).textTheme.titleLarge),
                                ),
                          
                          
                              ],
                            ),
                          ),
                        ),





                        GestureDetector(
                          onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (builder) => const ReviewsAndRatings())),
                          child: Container(
                            width: MediaQuery.of(context).size.width >= 800? MediaQuery.of(context).size.width * 0.45 : MediaQuery.of(context).size.width * 0.7,
                            height: MediaQuery.of(context).size.width * 0.45,
                            color: Theme.of(context).primaryColor,
                            decoration: BoxDecoration(border: Border.all(color: grey, width: 0.8), borderRadius: BorderRadius.circular(10.0)),
                            child: Column(
                              children: [
                          
                                Expanded(
                                  flex: 68,
                                  child: Image.network("https://resources.goyerv.com/2025/images/reviews-7b8ab4e8-d0e7-489e-93ea-54e866522818.jpg", fit: BoxFit.cover, width: double.infinity)
                                ),
                          
                                Expanded(
                                  flex: 20,
                                  child: Text("\nReviews and Ratings\n", style: Theme.of(context).textTheme.titleLarge),
                                ),
                          
                          
                              ],
                            ),
                          ),
                        ),





                        GestureDetector(
                          onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (builder) => const BestPractices())),
                          child: Container(
                            width: MediaQuery.of(context).size.width >= 800? MediaQuery.of(context).size.width * 0.45 : MediaQuery.of(context).size.width * 0.7,
                            height: MediaQuery.of(context).size.width * 0.45,
                            color: Theme.of(context).primaryColor,
                            decoration: BoxDecoration(border: Border.all(color: grey, width: 0.8), borderRadius: BorderRadius.circular(10.0)),
                            child: Column(
                              children: [
                          
                                Expanded(
                                  flex: 68,
                                  child: Image.network("https://resources.goyerv.com/2025/images/Best Bike Logistics Company in Lagos 2024.jpg", fit: BoxFit.cover, width: double.infinity)
                                ),

                                Expanded(
                                  flex: 20,
                                  child: Text("\nBest Practices\n", style: Theme.of(context).textTheme.titleLarge),
                                ),
                          
                          
                              ],
                            ),
                          ),
                        ),





                        GestureDetector(
                          onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (builder) => const UnfinishedRequests())),
                          child: Container(
                            width: MediaQuery.of(context).size.width >= 800? MediaQuery.of(context).size.width * 0.45 : MediaQuery.of(context).size.width * 0.7,
                            height: MediaQuery.of(context).size.width * 0.45,
                            color: Theme.of(context).primaryColor,
                            decoration: BoxDecoration(border: Border.all(color: grey, width: 0.8), borderRadius: BorderRadius.circular(10.0)),
                            child: Column(
                              children: [
                          
                                Expanded(
                                  flex: 68,
                                  child: Image.network("https://resources.goyerv.com/2025/images/trunk-with-parcels.jpg", fit: BoxFit.cover, width: double.infinity)
                                ),
                          
                                Expanded(
                                  flex: 20,
                                  child: Text("\nHandling Uncompleted Requests\n", style: Theme.of(context).textTheme.titleLarge),
                                ),
                          
                          
                              ],
                            ),
                          ),
                        ),











                      ],
                    )

                  ],
                ),
              ),



            ],
          ),
        ),
      ),
    );
  }



} 
