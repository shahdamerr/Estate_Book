import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DeveloperList extends StatelessWidget {
  const DeveloperList(
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
  final double startingPrice;
  final double downPayment;
  final int amountPerMonth;
  final int paymentDuration;
  final String developerName;
  final int bedrooms;
  final int bathrooms;
  final int size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 440,
      clipBehavior: Clip.hardEdge,
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.0)),
      width: MediaQuery.of(context).size.width / 1.2,
      child: Stack(
        children: [
          Positioned.fill(
            bottom: 244,
            right: 0,
            top: 0,
            left: 0,
            child: Image.asset(
              'assets/developer.png',
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            bottom: 244,
            right: 0,
            top: 0,
            left: 0,
            child: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                Color.fromARGB(112, 0, 0, 0),
                Color.fromARGB(26, 3, 3, 3)
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
                          borderRadius: BorderRadius.all(Radius.circular(30)),
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
                            height: 30,
                            width: 30,
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
                            height: 30,
                            width: 30,
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
          const SizedBox(
            height: 110,
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
                          borderRadius: BorderRadius.all(Radius.circular(30)),
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
                            height: 30,
                            width: 30,
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
                            height: 30,
                            width: 30,
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
              top: 0,
              bottom: 0,
              left: 12,
              right: 0,
              child: SizedBox(
                  height: 34,
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset('assets/location.png', color: Colors.black54),
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
                  ))),
          Positioned(
              top: 240,
              bottom: 0,
              left: 12,
              right: 0,
              child: SizedBox(
                height: 210,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
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
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
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
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 16, horizontal: 10),
                          child: Container(
                            height: 40,
                            width: 39,
                            clipBehavior: Clip.hardEdge,
                            decoration: const BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: Color.fromARGB(170, 231, 226, 226),
                              image: DecorationImage(
                                  image: AssetImage('assets/sleep.png'),
                                  fit: BoxFit.none),
                            ),
                          ),
                        ),
                        Text(bedrooms.toString(),
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.black)),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 16, horizontal: 10),
                          child: Container(
                            height: 40,
                            width: 39,
                            clipBehavior: Clip.hardEdge,
                            decoration: const BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: Color.fromARGB(170, 231, 226, 226),
                              image: DecorationImage(
                                  image: AssetImage('assets/shower.png'),
                                  fit: BoxFit.none),
                            ),
                          ),
                        ),
                        Text(bathrooms.toString(),
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.black)),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 16, horizontal: 10),
                          child: Container(
                            height: 40,
                            width: 39,
                            clipBehavior: Clip.hardEdge,
                            decoration: const BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: Color.fromARGB(170, 231, 226, 226),
                              image: DecorationImage(
                                  image: AssetImage('assets/size.png'),
                                  fit: BoxFit.none),
                            ),
                          ),
                        ),
                        Text(size.toString() + ' M',
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.black)),
                      ],
                    ),
                    Image.asset(
                      'assets/Line.png',
                      color: Colors.black,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 51, vertical: 13),
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
              ))
        ],
      ),
    );
  }
}
