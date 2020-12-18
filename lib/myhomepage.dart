import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  static final String id = 'MyHomePage';

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // #header
            Container(
              height: 250,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/ic_header.jpg'),
                      fit: BoxFit.cover)),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    gradient:
                        LinearGradient(begin: Alignment.bottomRight, colors: [
                  Colors.black.withOpacity(0.9),
                  Colors.black.withOpacity(0.6),
                  Colors.black.withOpacity(0.3),
                  Colors.black.withOpacity(0.2),
                ])),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Best Hotels Ever',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 45,
                      padding: EdgeInsets.symmetric(horizontal: 3),
                      margin: EdgeInsets.symmetric(horizontal: 45),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(30),
                        // boxShadow: [
                        //   BoxShadow(
                        //     color: Colors.white.withOpacity(0.6),
                        //     spreadRadius: 1,
                        //     blurRadius: 10,
                        //     offset: Offset(0.1, 0.2),
                        //   ),
                        // ]
                      ),
                      //#search
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search, color: Colors.grey),
                          hintText: 'Search for hotels...',
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 8),
            // #body
            Container(
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //#Bussiness Hotels
                  Text(
                    'Business Hotels',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800],
                        fontSize: 18),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 150,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeItem(
                            image: 'assets/images/ic_hotel1.jpg',
                            title: 'Hotel 1'),
                        makeItem(
                            image: 'assets/images/ic_hotel2.jpg',
                            title: 'Hotel 2'),
                        makeItem(
                            image: 'assets/images/ic_hotel3.jpg',
                            title: 'Hotel 3'),
                        makeItem(
                            image: 'assets/images/ic_hotel4.jpg',
                            title: 'Hotel 4'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  //#Airport Hotels
                  Text(
                    'Airport Hotels',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800],
                        fontSize: 18),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 150,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeItem(
                            image: 'assets/images/ic_hotel4.jpg',
                            title: 'Hotel 1'),
                        makeItem(
                            image: 'assets/images/ic_hotel3.jpg',
                            title: 'Hotel 2'),
                        makeItem(
                            image: 'assets/images/ic_hotel2.jpg',
                            title: 'Hotel 3'),
                        makeItem(
                            image: 'assets/images/ic_hotel1.jpg',
                            title: 'Hotel 4'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  //#Resort Hotels
                  Text(
                    'Resort Hotels',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800],
                        fontSize: 18),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 150,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeItem(
                            image: 'assets/images/ic_hotel4.jpg',
                            title: 'Hotel 1'),
                        makeItem(
                            image: 'assets/images/ic_hotel3.jpg',
                            title: 'Hotel 2'),
                        makeItem(
                            image: 'assets/images/ic_hotel2.jpg',
                            title: 'Hotel 3'),
                        makeItem(
                            image: 'assets/images/ic_hotel1.jpg',
                            title: 'Hotel 4'),
                      ],
                    ),
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget makeItem({String image, String title}) {
    return AspectRatio(
      aspectRatio: 1.2 / 1.1,
      child: Container(
        margin: EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                Colors.black.withOpacity(0.8),
                Colors.black.withOpacity(0.4),
                Colors.black.withOpacity(0.2),
              ])),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  title,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Icon(
                  Icons.favorite,
                  size: 20,
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
