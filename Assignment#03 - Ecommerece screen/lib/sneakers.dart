import 'package:flutter/material.dart';

class Shoes extends StatefulWidget {
  @override
  _ShoesState createState() => _ShoesState();
}

class _ShoesState extends State<Shoes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
          centerTitle: true,
          leading: Icon(
            Icons.arrow_back_ios_outlined,
            color: Colors.black45,
          ),
          backgroundColor: Colors.grey[200],
          title: Text(
            'Sneakers',
            style: TextStyle(
                color: Colors.black45,
                fontSize: 25,
                fontWeight: FontWeight.bold),
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            item(context, 'images/0.jpg', 'Addidas \'S50\'', '\$300', '4.7'),
            item(context, 'images/1.jpg', 'Nike Brand', '\$500', '4.1'),
            item(context, 'images/2.jpg', 'Nike Runner ', '\$450', '4'),
            item(context, 'images/3.jpg', 'Nike Classic', '\$350', '4.4'),
            item(context, 'images/4.jpg', 'Nike Youth', '\$300', '4.3'),
            item(context, 'images/5.jpg', 'NB NCAP', '\$288', '4.5'),
            item(context, 'images/6.jpg', 'LiNing', '\$900', '3.7'),
            item(context, 'images/7.jpg', 'Service Regular', '\$520', '4.6'),
            item(context, 'images/8.jpg', 'Nike Aggressive', '\$458', '4.9'),
            item(context, 'images/9.jpg', 'Air BlackShip', '\$490', '4.4'),
          ],
        ),
      ),
    );
  }
}

Widget item(
    context, String imageSource, String article, String price, String rating) {
  return Container(
    margin: EdgeInsets.all(10),
    color: Colors.white,
    padding: EdgeInsets.all(10),
    height: MediaQuery.of(context).size.height * 0.20,
    width: MediaQuery.of(context).size.width,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(children: [
          Container(
              // decoration:
              // BoxDecoration(borderRadius: BorderRadius.circular(1)),
              // color: Colors.white,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width * 0.25,
              child: Image(
                image: AssetImage(imageSource),
              )),
          SizedBox(
            width: 10,
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width * 0.40,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      Text(
                        article,
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        price,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      )
                    ])),
                ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Add to Cart',
                      style: TextStyle(color: Colors.blue),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                    ))
              ],
            ),
          )
        ]),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
                child: Row(
              children: [
                Text(
                  rating,
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                )
              ],
            )),
            ElevatedButton(
              onPressed: () {},
              child: Icon(
                Icons.thumb_up,
                color: Colors.blue,
              ),
              style: ElevatedButton.styleFrom(primary: Colors.white),
            )
          ],
        )
      ],
    ),
  );
}
