import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecommedItem extends StatelessWidget {
  RecommedItem(
      {super.key,
      required this.developerName,
      required this.location,
      required this.price,
      required this.project});

  final String project;
  final String developerName;
  final double price;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.0)),
      width: MediaQuery.of(context).size.width / 1.2,
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/pic2.png',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Color.fromARGB(190, 0, 0, 0),
              Color.fromARGB(37, 3, 3, 3)
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          ),
          Positioned(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 44,
                      width: 44,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        image: DecorationImage(
                            image: AssetImage('assets/logo.png'),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(project,
                              style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white)),
                          Text('by ' + developerName,
                              style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white))
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
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
                          padding: const EdgeInsets.symmetric(horizontal: 4),
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
                  ],
                ),
                const SizedBox(
                  height: 110,
                ),
                Text('Starting From',
                    style: GoogleFonts.poppins(
                        fontSize: 12,
                        //fontWeight: FontWeight.w400,
                        color: Colors.white)),
                const SizedBox(
                  height: 6,
                ),
                RichText(
                    text: TextSpan(
                        text: price.toString(),
                        style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                        children: <TextSpan>[
                      TextSpan(
                          text: ' EGP',
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              //fontWeight: FontWeight.w400,
                              color: Colors.white))
                    ])),
                const SizedBox(
                  height: 6,
                ),
                Row(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset('assets/location.png'),
                    Expanded(
                      child: Text(location,
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.white)),
                    )
                  ],
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
