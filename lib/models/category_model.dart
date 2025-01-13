 import 'package:flutter/material.dart';

class CategoryModel {
  String name;
  String iconPath;
  Color boxColor;
  CategoryModel({
    required this.name,
    required this.iconPath,
    required this.boxColor,
  });
  static List<CategoryModel> getCategories(){
    List<CategoryModel> categories = [];

    categories.add(
      CategoryModel(
        name: 'Fire',
       iconPath: 'assets/icons/fire-svgrepo-com.svg',
       boxColor: Color(0xff92A3FD)
       )
    );

    categories.add(
      CategoryModel(
        name:'Water',
        iconPath: 'assets/icons/water-fee-svgrepo-com.svg',
        boxColor:  Color.fromARGB(255, 37, 51, 121)
      )
    );

    categories.add(
      CategoryModel(
        name:'Grass',
        iconPath: 'assets/icons/green-leaves-svgrepo-com.svg',
        boxColor: Color.fromARGB(255, 115, 196, 127)
      )
    );
    categories.add(
      CategoryModel(
        name:'Electric',
        iconPath: 'assets/icons/electrical-panel-danger-svgrepo-com.svg',
        boxColor: Color.fromARGB(255, 95, 119, 239)
      )
    );

    return categories;
  }
 }