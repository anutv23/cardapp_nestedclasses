import 'package:cardapp_nestedclasses/model/HomeClass.dart';
import 'package:flutter/material.dart';

class CardList extends StatefulWidget {
  @override
  _CardListState createState() => _CardListState();
}

class _CardListState extends State<CardList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 440,
      //color: Colors.grey,
      child: ListView.builder(
          shrinkWrap: true,
          // physics: NeverScrollableScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: categoryList.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  height:70,
                  width: 85,
                 // color: Colors.yellowAccent,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipOval(
                      child: Image.network(
                        categoryList[index].forimage,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Text(
                  categoryList[index].forname,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.brown
                  ),
                )
              ],
            );
          }),
    );
  }
}
