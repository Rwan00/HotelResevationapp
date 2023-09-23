import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class customcontainer extends StatelessWidget {
  const customcontainer({
    super.key,
    required this.width,
    required this.height,
    required this.image1,
    required this.text,
    required this.image2,
  });

  final double width;
  final double height;
  final String image1;
  final String text;
  final String image2;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
      elevation: 3,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(color: Colors.black.withOpacity(0.75)),
        ),
        width: width * 0.9,
        height: height * 0.06,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(image1),
              Text(
                text,
                style: GoogleFonts.inter(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              Image.asset(image2)
            ],
          ),
        ),
      ),
    );
  }
}