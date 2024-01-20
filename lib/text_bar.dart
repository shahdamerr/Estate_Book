import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class TextBar extends StatelessWidget {
  const TextBar({super.key, required this.text});

  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        Text(
          'Show All',
          style: GoogleFonts.poppins(
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
