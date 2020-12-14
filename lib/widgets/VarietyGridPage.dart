import 'package:cardapp_nestedclasses/model/GiftClass.dart';
import 'package:cardapp_nestedclasses/model/VarietyClass.dart';
import 'package:cardapp_nestedclasses/pages/ThirdPageUI.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class VarietyGrid extends StatefulWidget {
  final List<Variety> varieties;
  VarietyGrid(this.varieties);

  @override
  _VarietyGridState createState() => _VarietyGridState();
}

class _VarietyGridState extends State<VarietyGrid> {
  var rating = 4;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.65,
            width: MediaQuery.of(context).size.width,
            child: GridView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: widget.varieties.length,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: (){
               //   Navigator.push(context,MaterialPageRoute(builder:(_)=>DetailPage(widget.varieties[index].details)));
                   Navigator.push(context,MaterialPageRoute(builder:(_)=>DetailPage(widget.varieties[index])));
                },
                  child: Card(
                    elevation: 5.0,
                    shadowColor: Colors.grey,
                    child: Container(
                      height: 350,
                      width: 450,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.8),
                            spreadRadius: 3,
                            blurRadius: 4,
                            offset: Offset(0, 4), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Hero(
                            tag: widget.varieties[index].varImage,

                            child: Image.network(
                              widget.varieties[index].varImage,
                              height: 130,
                              width: 250,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              widget.varieties[index].varName,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "MarckScript",
                                  fontSize: 16.0,
                                  color: Colors.black),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SmoothStarRating(
                                  allowHalfRating: false,
                                  onRated: (v) {},
                                  starCount: 5,
                                  rating: double.parse(
                                      widget.varieties[index].varRating),
                                  size: 15.0,
                                  isReadOnly: true,
                                  filledIconData: Icons.star,
                                  halfFilledIconData: Icons.star_half,
                                  defaultIconData: Icons.star_border,
                                  color: Colors.deepPurpleAccent,
                                  borderColor: Colors.deepPurple,
                                  spacing: 0.0),
                              Text(
                                widget.varieties[index].varPrice,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
