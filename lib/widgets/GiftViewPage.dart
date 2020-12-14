import 'package:cardapp_nestedclasses/model/GiftClass.dart';
import 'package:cardapp_nestedclasses/pages/SecondPageUI.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class GiftGrid extends StatefulWidget {
  @override
  _GiftGridState createState() => _GiftGridState();
}

class _GiftGridState extends State<GiftGrid> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        //physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
          shrinkWrap: true,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: gifts.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                    builder:(_)=>SecondPage(gifts[index]) ));
              },
              child: Column(
                children: [
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(18.0),
                          child: Hero(
                            tag: gifts[index].giftImage,
                            child: Image.network(
                              gifts[index].giftImage,
                              height: 150,
                              width: 200,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:120.0,top:15),
                        child: Container(
                            height: 45,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Colors.red.withOpacity(0.8),
                              borderRadius:
                                  new BorderRadius.all(Radius.elliptical(100, 50)),
                            ),
                            child: Center(child: Text(gifts[index].giftPrice,style: TextStyle(
                              fontWeight: FontWeight.bold
                            ),))),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height:20.0,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.circular(10.0),
                        color: Colors.purpleAccent[100].withOpacity(0.5),
                      ),
                      child: Center(
                        child: Text(
                          gifts[index].giftName,
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
