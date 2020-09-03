import 'package:flutter/material.dart';
import 'package:food_recipe/foodInfo.dart';

class FoodDetails extends StatelessWidget {

  String place;
  String foodName;
  String price;
  String link;
  List<String> ingLinks;
  List<String> ingredients;

  FoodDetails({
    this.place,
    this.foodName,
    this.price,
    this.link,
    this.ingLinks,
    this.ingredients

  });

  //build the food details page when inkwell is clicked in the foodinfo page

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFEfaf5ed),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 20.0,),
            Padding(padding: EdgeInsets.only(left:25.0),
              child: Text(place,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30.0,
                  letterSpacing: 1.5,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            SizedBox(height: 5.0),
            Padding(padding: EdgeInsets.only(left:25.0),
              child: Text(foodName,
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 30.0,
                  letterSpacing: 1.5,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            SizedBox(height: 35.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 30.0),
                  height: 200.0,
                  width: 230.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(link),
                      fit: BoxFit.fill
                    )
                  ),
                ),
                SizedBox(width: 40.0),
                Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(right: 30.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white,
                      ),
                      height: 40.0,
                      width: 40.0,
                      child: Icon(
                        Icons.favorite_border,
                        size: 30.0,
                      )
                    ),
                    SizedBox(height: 40.0),
                    Container(
                      margin: EdgeInsets.only(right: 30.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white,
                      ),
                      height: 40.0,
                      width: 40.0,
                      child: Icon(
                        Icons.share,
                        size: 30.0,
                      )
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 40.0),
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 30.0),
                  child: Text(
                    price,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30.0,
                    ),
                  ),
                ),
                SizedBox(width: 60.0),
                Container(
                  height: 80,
                  width: 287.0,
                  decoration: BoxDecoration(
                    color: Colors.amber[600],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0)
                    )
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 15.0),
                        height: 50.0,
                        width: 120.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            IconButton(icon: Icon(Icons.remove),
                              onPressed: (){},
                            ),
                            Text('1',
                              style: TextStyle(
                                fontSize: 24.0
                              ),
                            ),
                            IconButton(icon: Icon(Icons.add),
                              onPressed: (){},
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 30.0),
                        child: Text(
                          'Add to cart',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: Text('Ingredients',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                IconButton(icon: Icon(Icons.more_vert),
                  onPressed: (){},
                )
              ],
            ),
            SizedBox(height: 15.0),
             Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                    height: 60.0,
                    width: 50.0,
                    margin: EdgeInsets.only(left: 20.0),
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(ingLinks[0]))
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left:10.0, bottom: 5.0),
                    child: Text(
                      ingredients[0],
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.0
                      ),
                    ),
                  ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      IconButton(icon: Icon(Icons.add),
                        onPressed: (){},
                        color: Colors.redAccent,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 20.0),
                        child: Text(
                          'Add',
                          style: TextStyle(
                            color: Colors.redAccent,
                            fontSize: 18.0
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),

               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                    height: 60.0,
                    width: 50.0,
                    margin: EdgeInsets.only(left: 20.0),
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(ingLinks[1]))
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left:10.0, bottom: 5.0),
                    child: Text(
                      ingredients[1],
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.0
                      ),
                    ),
                  ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      IconButton(icon: Icon(Icons.add),
                        onPressed: (){},
                        color: Colors.redAccent,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 20.0),
                        child: Text(
                          'Add',
                          style: TextStyle(
                            color: Colors.redAccent,
                            fontSize: 18.0
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            
          ],
        )
      )
    );
  }
}