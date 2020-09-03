import 'package:flutter/material.dart';

import 'Details/food_page.dart';

class FoodInfo extends StatelessWidget {
   String place;
   String foodName;
   String price;
   String link;
   bool isB;
   bool isP;
   bool isC;
   bool isClicked;

  FoodInfo({
    @required this.place,
    @required this.foodName,
    @required this.price,
    @required this.link,
    @required this.isB,
    @required this.isP,
    @required this.isC
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(18.0),
      child: Container(
        height: 120.0,
        width: 180.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: Color(0xFFEfaf5ed),
        ),
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            children: <Widget>[
              InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> FoodPage()));
                  isClicked = true;
                },
                  child: Container(
                  margin: EdgeInsets.only(top: 10.0),
                  height: 120.0,
                  width: 130.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(link),
                    fit: BoxFit.fill
                    ),
                    borderRadius: BorderRadius.circular(15.0),
                    //color: Colors.blue
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        place,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.0
                        ),
                      ),
                       Text(
                        price,
                        style: TextStyle(
                          color: Colors.orange,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.0
                        ),
                      ),
                    ],
                  ),
                  Text(
                  foodName,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0
                  ),
                ),
              ],
            ),
               
            ],
          ),
        ),
      ),
    );
  }



}