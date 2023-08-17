import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextInfo extends StatelessWidget {
  const TextInfo({super.key, required this.text, required this.onTap});
   final String text;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Row(
        children: [
           Text(
                    text,
                    style: GoogleFonts.openSans(
                      fontSize: 19,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.15,
                    ),
                  ),
        const Spacer(flex: 1,),
    
        const Text(
          'See More',
          style: TextStyle(fontSize: 18,),
        ),
        IconButton(
            onPressed: onTap,
            icon: const Icon(
              Icons.arrow_forward_ios,
              size: 24,
            ))
      ]),
    );
  }
}
