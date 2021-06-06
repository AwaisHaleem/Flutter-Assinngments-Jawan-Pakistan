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
        body: Container(
          color: Colors.grey[100],
          margin: EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
              Row(
                children: [
                  Image(
                    height: MediaQuery.of(context).size.height * 0.25,
                    width: MediaQuery.of(context).size.width * 0.40,
                    image: AssetImage('images/pf.png'),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.25,
                    width: MediaQuery.of(context).size.width * 0.40,
                    padding: EdgeInsets.only(left: 10, top: 20, bottom: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'User',
                                style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'abc@gmail.com',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          'logout',
                          style: TextStyle(color: Colors.purple),
                        )
                      ],
                    ),
                  )
                ],
              ),
              ListTile(
                title: Text(
                  'ACCOUNT INFORMATION',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                title: Text(
                  'Full Name',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  'User',
                  style: TextStyle(color: Colors.black54),
                ),
                trailing: Icon(Icons.edit),
              ),
              primary('Email', 'abc@gmail.com'),
              primary('Phone', '+920009339'),
              primary('Adress', 'Jawan Tech Pakistan'),
              primary('Gender', 'Male'),
              primary('Date of Birth', '01-01-1010')
            ],
          ),
        ));
  }
}

Widget primary(String titleLine, String subTitlLine) {
  return ListTile(
      title: Text(
        titleLine,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        subTitlLine,
        style: TextStyle(color: Colors.black54),
      ));
}
