import 'package:flutter/material.dart';
import 'package:food_recipe/foodInfo.dart';
import 'package:characters/characters.dart';

void main() =>
    runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFE11331a),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 50.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 25.0),
              child: Text(
                'Search for',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: Text(
                    'Recipes',
                    style: TextStyle(
                        color: Colors.yellowAccent,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: TextField(
                  decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.scanner,
                        color: Colors.white60,
                        size: 20.0,
                      ),
                      hintText: 'Search or scan QR',
                      hintStyle:
                          TextStyle(color: Colors.white60, fontSize: 20.0))),
            ),
            SizedBox(height: 50.0),
            Container(
              height: 280.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  FoodInfo(
                      place: 'Whiskey King',
                      foodName: 'Burger',
                      price: '26',
                      link: 'assets/burger.jpg',
                      isB: true,
                      isP: false,
                      isC: false),
                  FoodInfo(
                      place: 'Trevor Pizza',
                      foodName: 'Pizza',
                      price: '30',
                      link: 'assets/pizza.jpg',
                      isB: false,
                      isP: true,
                      isC: false),
                  FoodInfo(
                      place: 'Mike Bakery',
                      foodName: 'Cake',
                      price: '38',
                      link: 'assets/cake.jpg',
                      isB: false,
                      isP: false,
                      isC: true),
                ],
              ),
            ),
            SizedBox(height: 15.0),
            Center(
              child: Container(
                height: 100.0,
                width: 340.0,
                decoration: BoxDecoration(
                    color: Colors.amber[600],
                    borderRadius: BorderRadius.circular(10.0)),
                child: Padding(
                  padding: EdgeInsets.all(14.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(10.0),
                        height: 80.0,
                        width: 60.0,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Fri',
                              style: TextStyle(
                                color: Colors.grey[800],
                                fontSize: 14.0,
                              ),
                            ),
                            SizedBox(height: 10.0),
                            Text(
                              '30',
                              style: TextStyle(
                                color: Colors.grey[800],
                                fontSize: 18.0,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 15.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Previous Event',
                            style: TextStyle(
                                color: Colors.orange[700],
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'Food challenge event',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 65.0),
                              Icon(
                                Icons.navigate_next,
                                size: 16.0,
                                color: Colors.black,
                              ),
                            ],
                          ),
                          SizedBox(height: 5.0),
                          Text(
                            'See event details',
                            style: TextStyle(
                                color: Colors.orange[700],
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
