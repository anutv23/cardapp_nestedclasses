import 'package:flutter/material.dart';
import 'OccasionClass.dart';
import 'GiftClass.dart';

class Variety{
  String varName;
  String varImage;
  String varPrice;
  String varRating;
  String varDescription;

List<Detail> details;




  Variety({this.varName,this.varImage,this.varRating,this.varPrice,this.varDescription,this.details});

}


class Detail {

  String detName;
  String detImage;

  Detail({this.detImage,this.detName});
}

