// ignore_for_file: file_names, prefer_const_literals_to_create_immutables, prefer_const_constructors, non_constant_identifier_names
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sneakers_ecommerce_app/AllSneakers.dart';
import 'package:sneakers_ecommerce_app/Widget/SectionWidget.dart';
import 'package:sneakers_ecommerce_app/Widget/SneakerCard.dart';
import './box_icons_icons.dart';
import 'Widget/CollectionWidget.dart';
import 'model/Sneaker.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => AllProducts(),
              ),
            );
          },
          icon: const Icon(
            BoxIcons.bxsGrid,
            color: Colors.black,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: IconButton(
              onPressed: () {},
              icon: Badge(
                elevation: 0,
                badgeContent: Text(
                  '',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                animationType: BadgeAnimationType.fade,
                shape: BadgeShape.circle,
                badgeColor: Colors.red,
                child: const Icon(
                  BoxIcons.bxShoppingBag,
                  color: Colors.black,
                ),
              ),
            ),
          )
        ],
        title: Text(
          "Roby",
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 34,
                ),
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Container(
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.9),
                        borderRadius: BorderRadius.circular(150),
                      ),
                    ),
                    Transform.rotate(
                      angle: -0.5,
                      child: Image.asset(
                        'img/imghome.png',
                        width: 350,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "New In",
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 18),
                child: Text(
                  "YEEZY BOOST \nSPLY - 350",
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 2,
                  ),
                ),
              ),
              Text(
                "Explore the new collection of Sneakers",
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    width: 200,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text(
                        "Explore Now",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              //Featured
              const SizedBox(height: 80),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Section(name: "FEATURED"),
                ],
              ),
              const SizedBox(height: 30),
              SneakerCard(
                sneaker: featuredSneakers[0],
                isSale: true,
              ),
              SneakerCard(
                sneaker: featuredSneakers[1],
                isSale: true,
              ),
              SneakerCard(
                sneaker: featuredSneakers[2],
                isSale: true,
              ),
              //collections
              const SizedBox(height: 80),
              CollectionWidget(sneaker: collectionSneakers[0]),
              CollectionWidget(sneaker: collectionSneakers[1]),
              //women Sneakers
              const SizedBox(height: 80),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Section(name: "WOMEN SNEAKERS"),
                ],
              ),
              const SizedBox(height: 30),
              SneakerCard(
                sneaker: womenSneakers[0],
                isSale: false,
              ),
              SneakerCard(
                sneaker: womenSneakers[1],
                isSale: false,
              ),
              SneakerCard(
                sneaker: womenSneakers[2],
                isSale: false,
              ),
              SneakerCard(
                sneaker: womenSneakers[3],
                isSale: false,
              ),
              //
              const SizedBox(height: 80),
              CollectionWidget(sneaker: collectionSneakers[2]),
              //new collection
              const SizedBox(height: 80),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Section(name: "NEW COLLECTIONS"),
                ],
              ),
              const SizedBox(height: 30),
              SneakerCard(
                sneaker: newCollectionSneakers[0],
                isSale: false,
              ),
              SneakerCard(
                sneaker: newCollectionSneakers[1],
                isSale: false,
              ),
              SneakerCard(
                sneaker: newCollectionSneakers[2],
                isSale: false,
              ),
              SneakerCard(
                sneaker: newCollectionSneakers[3],
                isSale: false,
              ),
              SneakerCard(
                sneaker: newCollectionSneakers[4],
                isSale: false,
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
