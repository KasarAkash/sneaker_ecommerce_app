// ignore_for_file: file_names, prefer_const_constructors, duplicate_ignore, unnecessary_string_interpolations, must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sneakers_ecommerce_app/box_icons_icons.dart';
import 'package:sneakers_ecommerce_app/model/Sneaker.dart';

class SneakerCard extends StatefulWidget {
  final Sneaker sneaker;
  bool isSale = false;

  SneakerCard({
    Key? key,
    required this.sneaker,
    required this.isSale,
  }) : super(key: key);

  @override
  State<SneakerCard> createState() => _SneakerCardState();
}

class _SneakerCardState extends State<SneakerCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(vertical: 12),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 35),
      decoration: BoxDecoration(
        color: widget.sneaker.color.withOpacity(0.4),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Stack(
        children: [
          widget.isSale
              ? Transform.rotate(
                  angle: -1.55,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Sale",
                        style: GoogleFonts.poppins(
                          fontSize: 26,
                          color: Colors.white,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                  ),
                )
              : SizedBox(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Transform.rotate(
                    angle: -0.6,
                    child: Image.asset(
                      widget.sneaker.image,
                      fit: BoxFit.contain,
                      width: 260,
                      height: 180,
                    ),
                  ),
                  SizedBox(height: 60),
                  Text(
                    "${widget.sneaker.name}",
                    style: GoogleFonts.poppins(
                      fontSize: 26,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1.2,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "${widget.sneaker.price}",
                    style: GoogleFonts.poppins(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1.2,
                    ),
                  ),
                  SizedBox(height: 16),
                  InkWell(
                    onTap: () {},
                    child: Row(
                      children: [
                        Text(
                          "Add to Cart",
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
                          size: 32,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
