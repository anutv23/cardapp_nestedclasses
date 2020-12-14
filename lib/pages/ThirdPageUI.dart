import 'package:cardapp_nestedclasses/model/VarietyClass.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DetailPage extends StatefulWidget {
 // final List<Variety> detail;
 final Variety detailsInfo;
  DetailPage(this.detailsInfo);
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.pink[50],
        body: Column(children: [

        
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 300,
                width: MediaQuery.of(context).size.width,
                child: Material(
                    shadowColor: Colors.grey,
                    color: Colors.grey,
                    elevation: 11.0,

                    child: Hero(
                      tag: widget.detailsInfo.varImage,
                      child: Image.network(
               widget.detailsInfo.varImage,
                        fit: BoxFit.cover,
                      ),
                    )),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text(widget.detailsInfo.varName,style:
              TextStyle(fontSize: 35,fontFamily: "MarckScript" ),),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              alignment: AlignmentDirectional.centerStart,
              child: Text(
                "Size Options",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
          ),
          Container(
            height: 40,
            width: 200,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(20),
              color: Colors.deepPurpleAccent,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Standard",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    widget.detailsInfo.varPrice,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              alignment: AlignmentDirectional.centerStart,
              child: Text(
                "Message(optional):",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: new TextFormField(
              maxLines: 3,
              decoration: new InputDecoration(
                filled: true,
                fillColor: Colors.grey[400],
                border: InputBorder.none,
                labelStyle: TextStyle(
                  color: Colors.black,

                ),
                labelText: "Type your message here..",
                //fillColor: Colors.grey,
               // border: new OutlineInputBorder(
               //   borderRadius: new BorderRadius.circular(25.0),
               //   borderSide: new BorderSide(),
              //  ),
                //fillColor: Colors.green
              ),
            ),
          ),
     //     SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.only(left:8.0),
            child: Text("The message should not be more than 500 chars",style:
              TextStyle(
                color: Colors.grey
              ),),
          ),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(alignment: Alignment.centerRight,
              child: RaisedButton(
                  textColor: Colors.white,
                  color: Colors.deepPurpleAccent,
                  child: Text("Add to Order"),
                  onPressed: (){}),
            ),
          ),

        ]),
      ),
    );
  }
}
