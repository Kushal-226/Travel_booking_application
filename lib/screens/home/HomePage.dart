import 'package:authentification/auth/Start.dart';
import 'package:authentification/config/colors.dart';
import 'package:authentification/screens/home/AppBar.dart';
import 'package:authentification/screens/home/drawer_side.dart';
import 'package:authentification/screens/search/search.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// import 'package:google_sign_in/google_sign_in.dart';
import 'package:authentification/screens/home/singal_product.dart';
import 'package:authentification/screens/product_overview/product_overview.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Widget _kathmanduHotels(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Kathmandu Hotels',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17.0,
              ),
              ),
              Text(
                'view all',
                style: TextStyle(color: Colors.black,),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SingalProduct(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Productoverview(
                        productName: "Hotel Annapurna",
                        productImage: 'https://images.atkans.com/Machhapuchre_Base_Camp?ik-sdk-version=javascript-1.4.3&updatedAt=1647342402575',
                      )));
                },
                productImage: 'https://images.atkans.com/Machhapuchre_Base_Camp?ik-sdk-version=javascript-1.4.3&updatedAt=1647342402575',
                productName: "Hotel Annapurna", 
              ),
              SingalProduct(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Productoverview(
                        productName: "Hotel Shanker",
                        productImage: 'https://images.atkans.com/surfing_oTREdLbqG?ik-sdk-version=javascript-1.4.3&updatedAt=1648121376795',
                      )));
                },
                productImage: 'https://images.atkans.com/surfing_oTREdLbqG?ik-sdk-version=javascript-1.4.3&updatedAt=1648121376795',
                productName: "Hotel Shanker",
              ),
              SingalProduct(
                productImage: 'https://images.atkans.com/surfing_oTREdLbqG?ik-sdk-version=javascript-1.4.3&updatedAt=1648121376795',
                productName: "Bodhi Hotel",
              ),
            ],
          ),
        ),
      ],
    );
  }
  
  Widget _dhulikhelHotels(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Dhulikhel Hotels',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17.0,
              ),
              ),
              Text(
                'view all',
                style: TextStyle(color: Colors.black,),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SingalProduct(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Productoverview()));
                },
                productImage: 'https://images.atkans.com/Machhapuchre_Base_Camp?ik-sdk-version=javascript-1.4.3&updatedAt=1647342402575',
                productName: "Sanctuary Nepal", 
              ),
              SingalProduct(
                productImage: 'https://images.atkans.com/surfing_oTREdLbqG?ik-sdk-version=javascript-1.4.3&updatedAt=1648121376795',
                productName: "Mountain Resort",
              ),
              SingalProduct(
                productImage: 'https://images.atkans.com/surfing_oTREdLbqG?ik-sdk-version=javascript-1.4.3&updatedAt=1648121376795',
                productName: "Dwarika's Resort",
              ),
            ],
          ),
        ),
      ],
    );
  }


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
          child: new Text("Home"),
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
            child:
                Icon(Icons.shopping_bag_rounded, size: 20, color: Colors.white),
            radius: 17,
          ),
        ),
      ],
      backgroundColor: primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: ListView(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://images.atkans.com/Nepal/Bhaktapur_Nepal_19-ZlmoQGcf.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1642174663320'),
                ),
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 130, bottom: 10),
                            child: Container(
                              height: 50,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Color(0xffd1ad17),
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(50),
                                  bottomLeft: Radius.circular(50),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'Booker',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    shadows: [
                                      BoxShadow(
                                          color: Colors.green,
                                          blurRadius: 10,
                                          offset: Offset(3, 3))
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            '30% Off',
                            style: TextStyle(
                                fontSize: 40,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              'On all Booking',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              'Book unique homes\nand experiences',
               textAlign: TextAlign.center,
               style: TextStyle(
                 fontSize: 25.0,
                 fontWeight: FontWeight.bold,
                 color: Colors.blueAccent,
                ),
            ),
            SizedBox(height: 20.0),
            _kathmanduHotels(context),
            SizedBox(height: 25.0),
            _dhulikhelHotels(context),
          ],
        ),
      ),
    );
  }
}
