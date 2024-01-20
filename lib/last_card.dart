import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DeveloperLists extends StatelessWidget {
  const DeveloperLists(
      {super.key,
      required this.amountPerMonth,
      required this.type,
      required this.bathrooms,
      required this.bedrooms,
      required this.developerName,
      required this.downPayment,
      required this.location,
      required this.paymentDuration,
      required this.size,
      required this.startingPrice,
      required this.year});

  final String type;
  final String location;
  final int year;
  final int startingPrice;
  final int downPayment;
  final int amountPerMonth;
  final int paymentDuration;
  final String developerName;
  final int bedrooms;
  final int bathrooms;
  final int size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 192,
          clipBehavior: Clip.hardEdge,
          margin: const EdgeInsets.only(right: 16),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12), topRight: Radius.circular(12)),
          ),
          width: MediaQuery.of(context).size.width / 1.2,
          child: Stack(
            children: [
              Positioned.fill(
                bottom: 0,
                right: 0,
                top: 0,
                left: 0,
                child: Image.asset(
                  'assets/developer.png',
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                top: 0,
                left: 0,
                child: Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(colors: [
                    Color.fromARGB(0, 0, 0, 0),
                    Color.fromARGB(83, 3, 3, 3)
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 32,
                          width: 95,
                          clipBehavior: Clip.hardEdge,
                          decoration: const BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                              color: Colors.white),
                          child: Center(
                            child: Text(
                              'Developer',
                              style: GoogleFonts.poppins(
                                  fontSize: 12, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 125,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4),
                              child: Container(
                                height: 36,
                                width: 36,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromARGB(93, 0, 0, 0),
                                  image: DecorationImage(
                                      image: AssetImage('assets/Compare.png'),
                                      fit: BoxFit.none),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4),
                              child: Container(
                                height: 36,
                                width: 36,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromARGB(93, 0, 0, 0),
                                  image: DecorationImage(
                                      image: AssetImage('assets/Favorite.png'),
                                      fit: BoxFit.none),
                                ),
                              ),
                            ),
                          ],
                        )
                      ])),
              Positioned(
                top: 140,
                bottom: 0,
                left: 0,
                right: 0,
                child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 26,
                            width: 82,
                            clipBehavior: Clip.hardEdge,
                            decoration: const BoxDecoration(
                                shape: BoxShape.rectangle,
                                border: Border(
                                    bottom: BorderSide(color: Colors.white),
                                    top: BorderSide(color: Colors.white),
                                    right: BorderSide(color: Colors.white),
                                    left: BorderSide(color: Colors.white)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4)),
                                color: Color.fromARGB(0, 255, 255, 255)),
                            child: Center(
                              child: Text(
                                type,
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                          Container(
                            height: 36,
                            width: 36,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromARGB(255, 255, 255, 255),
                              image: DecorationImage(
                                  image: AssetImage('assets/logo.png'),
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
            ],
          ),
        ),
        Container(
          height: 244,
          clipBehavior: Clip.hardEdge,
          margin: const EdgeInsets.only(right: 16),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12)),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.06),
                    spreadRadius: 2,
                    blurRadius: 8),
              ]),
          width: MediaQuery.of(context).size.width / 1.2,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Container(
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                          Color.fromARGB(0, 0, 0, 0),
                          Color.fromARGB(7, 3, 3, 3)
                        ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter)),
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset('assets/location.png',
                            color: Colors.black54),
                        Expanded(
                          child: Text(location,
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54)),
                        ),
                        Text(year.toString(),
                            style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black))
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Starting From (EGP)',
                              style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  // fontWeight: FontWeight.w500,
                                  color: Colors.black54)),
                          const SizedBox(
                            height: 6,
                          ),
                          Text(startingPrice.toString(),
                              style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                          const SizedBox(
                            height: 6,
                          ),
                          Text(developerName,
                              style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  // fontWeight: FontWeight.w500,
                                  color: Colors.black54)),
                        ],
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Down Payment',
                              style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  // fontWeight: FontWeight.w500,
                                  color: Colors.black54)),
                          const SizedBox(
                            height: 6,
                          ),
                          Text(downPayment.toString(),
                              style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                          const SizedBox(
                            height: 6,
                          ),
                          Text(
                              amountPerMonth.toString() +
                                  'K/Month' +
                                  '(' +
                                  paymentDuration.toString() +
                                  'y)',
                              style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  // fontWeight: FontWeight.w500,
                                  color: Colors.black54)),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    apartImage('sleep', bedrooms.toString()),
                    apartImage('shower', bathrooms.toString()),
                    apartImage('size', size.toString()),
                  ],
                ),
                Image.asset(
                  'assets/Line.png',
                  color: Colors.black,
                  fit: BoxFit.fitWidth,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 51, vertical: 13),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/telephone.png',
                      ),
                      Image.asset(
                        'assets/whatsapp.png',
                      ),
                      Image.asset(
                        'assets/share.png',
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget apartImage(String imagePath, String value) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Container(
            height: 40,
            width: 39,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Color(0xff797979).withOpacity(0.04),
              border: Border.all(color: Color(0xffD1D1D1).withOpacity(0.4)),
              image: DecorationImage(
                  image: AssetImage('assets/$imagePath.png'), fit: BoxFit.none),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          child: Text(value,
              style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black)),
        ),
      ],
    );
  }
}
