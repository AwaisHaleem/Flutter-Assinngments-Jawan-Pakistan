import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Ecom App UI',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(15),
            child: Icon(
              Icons.notifications,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            item(context, 'Iphone 12', 'images/iphone12.jpg'),
            item(context, 'Note 20 Ultra', 'images/note20ultra.jpg'),
            item(context, 'Macbook Air', 'images/macbookair.jpg'),
            item(context, 'Macbook Pro', 'images/macbookpro.jpg'),
            item(context, 'Gaming PC', 'images/gamingpc.jpg'),
            item(context, 'Backlit Keyboard', 'images/backlitkeyboard.jpg'),
            item(context, 'Mercedes', 'images/mercedes.jpg'),
            item(context, 'Mutton', 'images/mutton.jpg'),
            item(context, 'Roadster', 'images/roadster.jpg'),
            item(context, 'Royalfield', 'images/royalfield.jpg'),
          ],
        ),
      ),
    );
  }
}

Widget item(context, String article, String imageSource) {
  return Center(
    child: Container(
      margin: EdgeInsets.all(10),
      height: MediaQuery.of(context).size.height * .20,
      width: MediaQuery.of(context).size.width * 0.94,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width * 0.35,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image(image: AssetImage(imageSource))),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                article,
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Text(' 5.0 (23 review)')
                ],
              ),
              Row(
                children: [
                  Text('20 Pieces'),
                  Text(
                    '  \$90',
                    style: TextStyle(
                        color: Colors.purple, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Text('Quantity:1')
            ],
          )
        ],
      ),
    ),
  );
}
