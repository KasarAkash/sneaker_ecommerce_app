// ignore_for_file: file_names, prefer_typing_uninitialized_variables, unnecessary_brace_in_string_interps, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Section extends StatelessWidget {
  final name;

  const Section({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(8),
            ),
            child: SizedBox(
              height: 4,
              width: 80,
            ),
          ),
          SizedBox(height: 20),
          Text(
            "${name}",
            style: GoogleFonts.poppins(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.w700,
              letterSpacing: 1.6,
            ),
          )
        ],
      ),
    );
  }
}
