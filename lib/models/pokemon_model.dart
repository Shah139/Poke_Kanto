import 'dart:ffi';

import 'package:flutter/material.dart';

class ItemModel {
  String name;
  String iconPath;
  String level;
  String fightTime;
  String weakness;
  Color boxColor;
  bool viewIsSelected;
  String externalLink;

  ItemModel({
    required this.name,
    required this.iconPath,
    required this.level,
    required this.fightTime,
    required this.weakness,
    required this.boxColor,
    required this.viewIsSelected,
    required this.externalLink
  });

  static List<ItemModel> getItems(){
    List<ItemModel> items = [];

    items.add(
      ItemModel(
        name: 'Bag',
        iconPath: 'assets/icons/bag-svgrepo-com.svg',
        level: '2', 
        fightTime: '5 hour', 
        weakness: 'Leave', 
        boxColor: const Color.fromARGB(255, 91, 35, 223),
        viewIsSelected: true,
        externalLink: 'https://www.daraz.com.bd/mens-bags/',
        )
    );
    items.add(
      ItemModel(
        name: 'Jersey',
        iconPath: 'assets/icons/jersey.svg',
        level: '3', 
        fightTime: '6 hour', 
        weakness: 'Fire', 
        boxColor: const Color.fromARGB(255, 223, 35, 48),
        viewIsSelected: true,
        externalLink: 'https://www.daraz.com.bd/men-jersey/',
        )
    );
    items.add(
      ItemModel(
        name: 'Water Bottle',
        iconPath: 'assets/icons/bottle-svgrepo-com.svg',
        level: '5', 
        fightTime: '3 hour', 
        weakness: 'Electric', 
        boxColor: const Color.fromARGB(255, 119, 152, 236),
        viewIsSelected: true,
        externalLink: 'https://www.daraz.com.bd/water-bottle/',
        )
    );

    return items;
  }
}

