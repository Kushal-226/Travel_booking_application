import 'package:authentification/config/colors.dart';
import 'package:authentification/screens/home/HomePage.dart';
import 'package:authentification/screens/home/drawer_side.dart';
import 'package:authentification/screens/search/search.dart';
import 'package:flutter/material.dart';

class Productoverview extends StatefulWidget {
  final String productName;
  final String productImage;
  Productoverview({this.productName, this.productImage});
  @override
  _ProductoverviewState createState() => _ProductoverviewState();
}

class _ProductoverviewState extends State<Productoverview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerSide(),
      appBar: AppBar(
        title:
            // Text("Home", style: TextStyle(color: Colors.white, fontSize: 17)),
            InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage()));
          },
          child: new Padding(
            padding: new EdgeInsets.all(10.0),
            child: new Text("Product Overview"),
          ),
        ),
        actions: [
          CircleAvatar(
          child: IconButton(
            onPressed: (){
              Navigator.push( 
                context, MaterialPageRoute(builder: (context) => Search(),
                 ),
              );
            },
            icon: Icon(
            Icons.search, size: 20, color: Colors.white,
            ),
            ),
            radius: 17,
        ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: CircleAvatar(
              child: Icon(Icons.shopping_bag_rounded,
                  size: 20, color: Colors.white),
              radius: 17,
            ),
          ),
        ],
        backgroundColor: primaryColor,
      ),
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Column(
              children: [
                ListTile(
                  title: Text(widget.productName ??"",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text("\$50"),
                ),
                Container(
                  height: 250,
                  padding: EdgeInsets.all(10),
                  child: Image.network(widget.productImage ??"",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  width: double.infinity,
                  child: Column(
                    children: [
                      Text(
                        "About This Product",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "of a customer. Wikipedi In marketing, a product is an object or system made available for consumer use; it is anything that can be offered to a market to satisfy the desire or need of a customer. Wikipedi",
                        style: TextStyle(
                          fontSize: 16,
                          color: textColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 30.0),
          TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Where',
              icon: Container(
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Color(0xFFEEF8FF),
                ),
                child: Icon(
                  Icons.location_on,
                  size: 25.0,
                  color: Color(
                    0xFF309DF1,
                  ),
                ),
              ),
            ),
          ),
          Divider(height: 40.0),
          TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Check-in - Check-out',
              icon: Container(
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Color(0xFFEEF8FF),
                ),
                child: Icon(
                  Icons.calendar_today,
                  size: 25.0,
                  color: Color(
                    0xFF309DF1,
                  ),
                ),
              ),
            ),
          ),
          Divider(height: 40.0),
          TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: '1 Adults, 0 Children, 1 Room',
              icon: Container(
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Color(0xFFEEF8FF),
                ),
                child: Icon(
                  Icons.person,
                  size: 25.0,
                  color: Color(
                    0xFF309DF1,
                  ),
                ),
              ),
            ),
          ),
          Divider(height: 40.0),
          FloatingActionButton(
            onPressed: () => {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()))
            },
            tooltip: 'Increment',
            child: Icon(Icons.book_online_rounded),
            backgroundColor: Colors.orange,
          ),
          SizedBox(height: 30.0),

          // FlatButton(
          //   padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
          //   shape: RoundedRectangleBorder(
          //     borderRadius: BorderRadius.circular(20.0),
          //   ),
          //   color: primaryColor,
          //     child: Text(
          //     'Add to cart',
          //     style: TextStyle(
          //       fontSize: 18.0,
          //       color: Colors.white,
          //       fontWeight: FontWeight.bold,
          //     ),
          //   ),
          //   onPressed: () => print('Added to Cart'),
          // ),
        ],
      ),
    );
  }
}
