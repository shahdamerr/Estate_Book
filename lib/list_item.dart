import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListItem extends StatelessWidget {
  const ListItem(
      {super.key, required this.projectName, required this.projectNo});
  final String projectName;
  final int projectNo;
  //String projectImage;

  @override
  Widget build(context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.0)),
      width: MediaQuery.of(context).size.width / 2.4,
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/pic1.png',
            ),
          ),
          Positioned(
              left: 0,
              //top: 140,
              bottom: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.7),
                      spreadRadius: 5,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(projectName,
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(projectNo.toString() + ' projects',
                              style: GoogleFonts.poppins(
                                  fontSize: 12, color: Colors.white)),
                          const SizedBox(
                            height: 12,
                          ),
                          const Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
