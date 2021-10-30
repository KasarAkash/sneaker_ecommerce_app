// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Sneaker {
  String name;
  String image;
  String price;
  Color color;

  Sneaker({
    required this.name,
    required this.image,
    required this.price,
    required this.color,
  });
}

List<Sneaker> sneakers = <Sneaker>[
  ...featuredSneakers,
  ...womenSneakers,
  ...newCollectionSneakers,
];

List<Sneaker> featuredSneakers = <Sneaker>[
  Sneaker(
    name: 'Nike Jorden',
    image: 'img/featured1.png',
    price: '\$149.99',
    color: Colors.red,
  ),
  Sneaker(
    name: 'Nike Free RN1',
    image: 'img/featured2.png',
    price: '\$139.90',
    color: Colors.black26,
  ),
  Sneaker(
    name: 'Nike Free RN2',
    image: 'img/featured3.png',
    price: '\$129.20',
    color: Colors.blueGrey,
  ),
];

List<Sneaker> collectionSneakers = <Sneaker>[
  Sneaker(
    name: 'Nike',
    image: 'img/collection1.png',
    price: 'New Collection 2021',
    color: Colors.transparent,
  ),
  Sneaker(
    name: 'Addidas',
    image: 'img/collection2.png',
    price: 'New Collection 2021',
    color: Colors.transparent,
  ),
  Sneaker(
    name: '50% OFF',
    image: 'img/offer.png',
    price: 'In Addidas\nSupper Sneakers',
    color: Colors.transparent,
  ),
];

List<Sneaker> womenSneakers = <Sneaker>[
  Sneaker(
    name: 'Nike Free TR',
    image: 'img/women1.png',
    price: '\$159.30',
    color: Colors.red,
  ),
  Sneaker(
    name: 'Nike Get 5',
    image: 'img/women2.png',
    price: '\$139.23',
    color: Colors.amber,
  ),
  Sneaker(
    name: 'Nike GS Red',
    image: 'img/women3.png',
    price: '\$129.63',
    color: Colors.red,
  ),
  Sneaker(
    name: 'Nike GS Pink',
    image: 'img/women4.png',
    price: '\$149.45',
    color: Colors.pink,
  ),
];

List<Sneaker> newCollectionSneakers = <Sneaker>[
  Sneaker(
    name: 'Mens Collection',
    image: 'img/new1.png',
    price: '\$119.99',
    color: Colors.brown,
  ),
  Sneaker(
    name: 'SPLY 350',
    image: 'img/new2.png',
    price: '\$139.99',
    color: Colors.red,
  ),
  Sneaker(
    name: 'SPLY 350 Black',
    image: 'img/new3.png',
    price: '\$129.99',
    color: Colors.black26,
  ),
  Sneaker(
    name: 'SPLY 350',
    image: 'img/new4.png',
    price: '\$139.99',
    color: Colors.grey,
  ),
  Sneaker(
    name: 'SPLY 350',
    image: 'img/new5.png',
    price: '\$109.99',
    color: Colors.blueGrey,
  ),
];
