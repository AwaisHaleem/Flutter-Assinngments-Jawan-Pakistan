import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Ecom App UI',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width * .95,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.grey[200]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Username',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black45,
                  ),
                ),
                Icon(Icons.search)
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20),
            height: 20,
            width: MediaQuery.of(context).size.width * 0.90,
            child: Text(
              'History',
              style: TextStyle(fontSize: 16),
            ),
          ),
          item('Iphone 12', 'images/iphone12.jpg'),
          item('Note 20 Ultra', 'images/note20ultra.jpg'),
          item('Macbook Air', 'images/macbookair.jpg'),
          item('Macbook Pro', 'images/macbookpro.jpg'),
          item('Gaming PC', 'images/gamingpc.jpg'),
          item('Backlit Keyboard', 'images/backlitkeyboard.jpg'),
          item('Mercedes', 'images/mercedes.jpg'),
          item('Mutton', 'images/mutton.jpg'),
          item('Royalfield', 'images/royalfield.jpg'),
        ]),
      ),
    );
  }
}

Widget item(String article, String imageSource) {
  return ListTile(
    leading: CircleAvatar(backgroundImage: AssetImage(imageSource)),
    title: Text(
      article,
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    subtitle: Row(children: [
      Icon(
        Icons.star,
        color: Colors.yellow,
      ),
      Text('5.0 (23 review)')
    ]),
    trailing: Text('\$10'),
  );
}
