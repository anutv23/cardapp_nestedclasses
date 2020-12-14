import 'package:cardapp_nestedclasses/widgets/CardListPage.dart';
import 'package:cardapp_nestedclasses/widgets/GiftViewPage.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.pink[50],
        appBar: AppBar(
          actions: [

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.shopping_cart_outlined,

              size: 27,
              color: Colors.black,),
            )
          ],

          backgroundColor: Colors.pink[100],
          elevation: 3,

        ),
        drawer: new Drawer(
          elevation: 14.0,


          child:  Container(

            color: Colors.pink[50],
            child: ListView(

              children: [
                new UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.pink[100],
                  ),

                  currentAccountPicture: new CircleAvatar(
                    backgroundColor: Colors.pink[100],
                    backgroundImage: new NetworkImage('https://www.kindpng.com/picc/m/207-2074624_white-gray-circle-avatar-png-transparent-png.png'),
                  ),
                  accountName: Text("Sign Up/Login",style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),),
                  arrowColor: Colors.white,
                ),

                new ListTile(
                  title: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Shop",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        //fontWeight: FontWeight.bold
                      ),
                    ),

                  ),
                ),
                new ListTile(
                  title: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Sale",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                        //fontWeight: FontWeight.bold
                      ),),
                  ),
                ),
                new ListTile(
                  title: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("FAQs",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        //fontWeight: FontWeight.bold
                      ),),
                  ),
                ),
                new ListTile(
                  title: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Contact Us",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          //fontWeight: FontWeight.bold
                      ),),
                  ),
                ),

              ],
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              CarouselSlider(
                options: CarouselOptions(
                  height: 260.0,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  //autoPlayAnimationDuration: Duration(milliseconds: 900),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  pauseAutoPlayOnTouch: true,
                ),
                items: [
                  Container(
                    height: 200,
                    width: 400,
                    margin: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        image: AssetImage("assets/diwali.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 100,
                          width: 170,
                          // color: Colors.grey,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "5% OFF with code: TechPowerGirls ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  fontFamily: 'Playball',
                                  color: Colors.purpleAccent),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 200,
                    width: 400,
                    margin: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        image: AssetImage("assets/valentine.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    height: 200,
                    width: 400,
                    margin: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        image: AssetImage("assets/christmascover.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          height: 90,
                          width: 400,
                          // color: Colors.grey,
                          child: Padding(
                            padding:
                                const EdgeInsets.only(top: 10.0, left: 10),
                            child: Text(
                              "Personalised Mugs Available ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'MarckScript',
                                  fontSize:28,
                                  color: Colors.green[600]),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 200,
                    width: 400,
                    margin: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        image: AssetImage("assets/newyear.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    height: 200,
                    width: 400,
                    margin: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        image: AssetImage("assets/birthday.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 100,
                          width: 170,
                          // color: Colors.grey,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 8.0, left: 8),
                            child: Text(
                              "Order by 6pm for FREE delivery! ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      style: BorderStyle.solid,
                      width: 1.0,
                      color: Colors.deepPurple
                    ),
                    color: Colors.purple[100]),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Cards for everyone you ",
                        style: TextStyle(
                            fontSize: 25,
                           // fontWeight: FontWeight.bold,
                            fontFamily: 'Playball',
                            color: Colors.black),
                      ),
                      Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 40,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 180),
                child: Container(
                  height: 30,
                  width: 200,
                  // color: Colors.grey,
                  child: Text(
                    "Shop Cards",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.purple,
                        fontSize: 18),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              CardList(),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 30,
                width: 400,
                // color: Colors.grey,
                child: Text(
                  "or Make it Unique?",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.purple,
                      fontSize: 18),
                ),
              ),
              GiftGrid(),
            ],
          ),
        ));
  }
}
