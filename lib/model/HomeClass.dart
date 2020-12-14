import 'package:flutter/material.dart';

class Category{
  String forname;
  String forimage;
  Category({this.forname,this.forimage});
}

List<Category> categoryList=[
  Category(forname:"For Her",
      forimage:"https://image.freepik.com/free-photo/photo-positive-smiling-woman-with-broad-charming-smile-dressed-casually-recreats-home-feels-relaxed-comfortable_273609-3203.jpg" ),
  Category(forname:"For Him",
      forimage:"https://image.freepik.com/free-photo/portrait-handsome-young-cheerful-man-wears-blank-long-sleeve-looks-camera-with-happy-expressions-stands-pink-background_295783-3350.jpg"),
  Category(forname:"For Kids/Teens",
      forimage:"https://image.freepik.com/free-photo/teenage-girsl-whispering-ears-secret-teen-boy-white-background_155003-7647.jpg"),
  Category(forname:"For Gran",
      forimage:"https://image.freepik.com/free-photo/grandchild-aged-looking-joy-face_1262-2786.jpg"),
  Category(forname:"For Couples",
      forimage:"https://image.freepik.com/free-photo/handsome-spring-husband-face-two_1153-2235.jpg"),
  Category(forname:"Wedding",
      forimage:"https://image.freepik.com/free-photo/bride-groom-pose-large-circle-lilac-garden_8353-1246.jpg"),

];