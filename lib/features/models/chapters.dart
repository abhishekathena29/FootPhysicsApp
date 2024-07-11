import 'package:flutter/material.dart';
import 'package:foot_physics_aap/features/home/chapter2.dart';
import 'package:foot_physics_aap/features/home/pages/chapter1.dart';
import 'package:foot_physics_aap/features/home/pages/chapter3.dart';
class CategoryModel{
  String chapternum;
  Widget redirectPath;
  String name;
  String subname;

  CategoryModel({
    required this.chapternum,
    required this.redirectPath,
    required this.name,
    required this.subname
  });

  static List<CategoryModel> getCategories(){
    List<CategoryModel> categories = [];

    categories.add(
      CategoryModel(
        chapternum: 'Chapter 1', 
        redirectPath: ChapteronePage(), 
        name: 'Coordinate plane & Distance',
        subname: 'The importance of positioning')
    );
    categories.add(
      CategoryModel(
        chapternum: 'Chapter 2', 
        redirectPath: ChaptertwoPage(), 
        name: 'Vectors & Displacement', 
        subname: 'Positioning continued')
    );
    categories.add(
      CategoryModel(
        chapternum: 'Chapter 3', 
        redirectPath: ChapterthreePage(), 
        name: 'Speed, Velocity & Acceleration',
        subname: 'Speed or Agility?')
    );

    categories.add(
      CategoryModel(
        chapternum: 'Chapter 4', 
        redirectPath: ChapteronePage(), 
        name: 'Speed, Velocity & Acceleration 2 ', 
        subname: "Derivatives and Integration")
    );

    categories.add(
      CategoryModel(
        chapternum: 'Chapter 3', 
        redirectPath: ChapteronePage(), 
        name: 'Force & Friction',
        subname: "Newton's football")
    );

    categories.add(
      CategoryModel(
        chapternum: 'Chapter 4', 
        redirectPath: ChapteronePage(), 
        name: 'Momentum & Impulse',
        subname: "The perfect control")
    );

    categories.add(
      CategoryModel(
        chapternum: 'Chapter 5', 
        redirectPath: ChapteronePage(), 
        name: 'Projectile motion',
        subname: "The perfect pass")
    );

    categories.add(
      CategoryModel(
        chapternum: 'Chapter 6', 
        redirectPath: ChapteronePage(), 
        name: 'Rotation effect of a football',
        subname: "Roberto Carlos Freekick")
    );

    return categories;
  }
}