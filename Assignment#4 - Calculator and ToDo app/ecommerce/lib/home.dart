
import 'package:flutter/material.dart';

class Electronics extends StatefulWidget {
  @override
  _ElectronicsState createState() => _ElectronicsState();
}

class _ElectronicsState extends State<Electronics> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Container(
            child: Text(
              "Electronics Items",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          actions: [
            Icon(
              Icons.notifications,
              // color: Colors.black,
              size: 30.0,
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              items(
                  'images/lap1.jpg', 'MAC BOOK', "4.2", '50', '2000', 32, '2'),
              items('images/lap2.jpg', 'MAC AIR', "4.0", '35', '1800', 33, '2'),
              items(
                  'images/lap3.jpg', 'DELL XPS', "3.2", '18', '1790', 22, '1'),
              items('images/lap4.jpg', 'LENOVO', "4.5", '20', '1700', 38, '1'),
              items('images/lap5.jpg', 'DELL NOTEBOOK', "4.7", '29', '1800', 12,
                  '2'),
              items('images/lap3.jpg', 'MAC BOOK PRO', "4.2", '24', '2500', 62,
                  '1'),
            ],
          ),
        ),
      ),
    );
  }
}

Widget items(String img, String name, String rating, String rev, String price,
    var piece, String qty) {
  return Center(
    child: Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.lightBlue,
            )), //MediaQuery.of().size.width
        child: Row(
          children: [
            Container(
              // height: 200,
              width: 175,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.transparent,
                ),
                borderRadius: BorderRadius.circular(15),
                // borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              child: Image.asset(img),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      name,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellowAccent,
                          size: 15,
                        ),
                        Text("$rating ($rev reviews)"),
                      ],
                    ),
                    Row(
                      children: [
                        Text("$piece Pieces"),
                        Text(
                          " \$" + price,
                          style: TextStyle(
                              color: Colors.purple,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Text('Quantity: $qty'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
    }