import 'package:estate_book/last_card.dart';
import 'package:estate_book/list_item.dart';
import 'package:estate_book/list_item_recc.dart';
//import 'package:estate_book/list_item_recc.dart';
import 'package:estate_book/text_bar.dart';
import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';

class FullView extends StatefulWidget {
  const FullView({super.key});

  @override
  State<FullView> createState() {
    return _FullViewState();
  }
}

class _FullViewState extends State<FullView> {
  final List<ListItem> items = [
    ListItem(projectName: 'GoldenState', projectNo: 12),
    ListItem(projectName: 'Golden State', projectNo: 16),
    ListItem(projectName: 'GoldenState', projectNo: 12),
    ListItem(projectName: 'Golden State', projectNo: 16),
  ];

  final List<RecommedItem> recc = [
    RecommedItem(
        developerName: 'Hassan Allam',
        location:
            'District , Marakz , Industrial , Area, New cairo,Madinatyyyyyyyyyyy',
        price: 3200.000,
        project: 'Mountain View'),
    RecommedItem(
        developerName: 'Hassan Allam',
        location:
            'District , Marakz , Industrial , Area, New cairo,Madinatyyyyyyyyyyyyyyyyyy',
        price: 3200.000,
        project: 'Mountain View'),
    RecommedItem(
        developerName: 'Hassan Allam',
        location:
            'District , Marakz , Industrial , Area, New cairo,Madinatyyyyyyyyyyyyyyyyyy',
        price: 3200.000,
        project: 'Mountain View'),
    RecommedItem(
        developerName: 'Hassan Allam',
        location:
            'District , Marakz , Industrial , Area, New cairo,Madinatyyyyyyyyyyyyyyyyyy',
        price: 3200.000,
        project: 'Mountain View'),
  ];

  final List<DeveloperLists> developer = [
    const DeveloperLists(
        amountPerMonth: 250,
        type: 'Apartment',
        bathrooms: 2,
        bedrooms: 5,
        developerName: ' The Wonder MarQ',
        downPayment: 9000000,
        location: 'Al Mostakbal City, New Cairo',
        paymentDuration: 12,
        size: 145,
        startingPrice: 99000000,
        year: 2023),
    const DeveloperLists(
        amountPerMonth: 250,
        type: 'Villa',
        bathrooms: 2,
        bedrooms: 5,
        developerName: ' The Wonder MarQ',
        downPayment: 9000000,
        location: 'Al Mostakbal City, New Cairo',
        paymentDuration: 12,
        size: 145,
        startingPrice: 99000000,
        year: 2023),
    const DeveloperLists(
        amountPerMonth: 250,
        type: 'Apartment',
        bathrooms: 2,
        bedrooms: 5,
        developerName: ' The Wonder MarQ',
        downPayment: 9000000,
        location: 'Al Mostakbal City, New Cairo',
        paymentDuration: 12,
        size: 145,
        startingPrice: 99000000,
        year: 2023),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(children: [
          Column(
            children: [
              const SizedBox(
                height: 35,
              ),
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: TextBar(text: 'Popular Right Now ')),
              const SizedBox(
                height: 24,
              ),
              SizedBox(
                height: 190,
                child: ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    scrollDirection: Axis.horizontal,
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return items[index];
                    }),
              ),
              const SizedBox(
                height: 25,
              ),
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: TextBar(
                    text: 'Recommended Projects',
                  )),
              const SizedBox(
                height: 24,
              ),
              SizedBox(
                height: 260,
                child: ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    scrollDirection: Axis.horizontal,
                    itemCount: recc.length,
                    itemBuilder: ((context, index) {
                      return recc[index];
                    })),
              ),
              const SizedBox(
                height: 25,
              ),
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: TextBar(
                    text: 'From Developers',
                  )),
              const SizedBox(
                height: 24,
              ),
              Container(
                height: 452,
                //margin: const EdgeInsetsDirectional.only(bottom: 32),
                child: ListView.builder(
                    padding: const EdgeInsetsDirectional.only(
                        start: 24, end: 24, bottom: 16),
                    scrollDirection: Axis.horizontal,
                    itemCount: developer.length,
                    itemBuilder: ((context, index) {
                      return developer[index];
                    })),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
