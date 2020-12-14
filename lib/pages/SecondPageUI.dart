import 'package:cardapp_nestedclasses/model/GiftClass.dart';
import 'package:cardapp_nestedclasses/widgets/VarietyGridPage.dart';
import 'package:flutter/material.dart';
import 'package:cardapp_nestedclasses/model/OccasionClass.dart';

class SecondPage extends StatefulWidget {
  final Gifts giftgrid;

  const SecondPage(this.giftgrid);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //backgroundColor: Colors.pink[50],
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Hero(
                    tag: widget.giftgrid.giftImage,

                    child: Image.network(widget.giftgrid.giftImage,height: 250,width: 450,fit: BoxFit.cover,),

                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:20.0,left:240),
                    child: Text(widget.giftgrid.giftName,style:
                    TextStyle(
                        fontSize: 40,
                        fontFamily: "Playball",
                        fontWeight: FontWeight.bold,
                        color: Colors.white,

                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:195.0,left:250),
                    child: Text("Order NOW for ",style:
                      TextStyle(
                        fontSize: 20,

                        fontWeight: FontWeight.bold,
                      ),
                    ),



                  ),
                   Padding(
                     padding: const EdgeInsets.only(top:220.0,left:220),
                     child: Text(
                       "Same Day Delivery! ",style:
                  TextStyle(
                      fontSize: 22,

                      fontWeight: FontWeight.bold,
                    color: Colors.red

                  ),),
                   ),
                  
                ],
              
              ),
              SizedBox(height: 10,),

                Container(
                  height: 30,
                  width: 400,
                  //color: Colors.grey,
                  child: Text(
                    "By Occasion",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.purple,
                        fontSize: 18),
                  ),
                ),
                Container(
                  height:50,
                  width: double.infinity,
                  // color: Colors.grey,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: widget.giftgrid.occasion.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: (){},
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 30,
                                  width:120,
                                  decoration: BoxDecoration(
                                    color: Colors.pink[200].withOpacity(0.7),
                                    borderRadius: BorderRadius.circular(10.0),

                                  ),

                                  child: Center(
                                    child: Text(
                                      widget.giftgrid.occasion[index].occName,
                                      style: TextStyle(
                                          fontSize: 15, fontWeight: FontWeight.bold),
                                    ),
                                  ),

                                ),
                              )],
                          ),
                        );
                      }),
                ),
                SizedBox(height: 15,),
                VarietyGrid(widget.giftgrid.variety),



            ],
          ),
        ),
      ),
    );
  }
}
