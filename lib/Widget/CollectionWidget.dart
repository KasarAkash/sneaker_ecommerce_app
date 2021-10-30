// ignore: file_names
// ignore_for_file: prefer_const_constructors, duplicate_ignore, file_names, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sneakers_ecommerce_app/model/Sneaker.dart';

import '../box_icons_icons.dart';

class CollectionWidget extends StatelessWidget {
  final Sneaker sneaker;
  const CollectionWidget({Key? key, required this.sneaker}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 340,
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.08),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            height: 260,
            child: Image.asset(sneaker.image),
          ),
          Positioned(
            left: 20,
            bottom: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${sneaker.name}",
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 26,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Text(
                    "${sneaker.price}",
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    //todo:
                  },
                  child: Row(
                    children: [
                      Text(
                        "Buy Now",
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          color: Colors.black87,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(width: 3),
                      Icon(
                        BoxIcons.bxRightArrowAlt,
                        color: Colors.black,
                        size: 30,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
