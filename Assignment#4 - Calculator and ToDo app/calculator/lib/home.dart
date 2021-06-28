import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String output = '';
  String result = '';

  allClear() {
    setState(() {
      output = '';
      result = '';
    });
  }

  rslt() {
    Parser p = Parser();
    Expression exp = p.parse(output);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    setState(() {
      result = eval.toString();
    });
  }

  Widget btn(String textt) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          output += textt;
        });
      },
      child: Text(
        textt,
        style: TextStyle(color: Colors.blue[100], fontWeight: FontWeight.bold),
      ),
      style: ElevatedButton.styleFrom(
          primary: Colors.grey,
          shadowColor: Colors.white,
          shape: CircleBorder(),
          padding: EdgeInsets.all(30)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.15,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 8,
                      width: 33,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20)),
                          color: Colors.blue[100]),
                    ),
                    Container(
                      height: 8,
                      width: 23,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20)),
                          color: Colors.blue[100]),
                    ),
                  ],
                ),
                Text(
                  'Calculator',
                  style: TextStyle(
                      color: Colors.blue[100],
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.wb_sunny,
                  color: Colors.blue[100],
                )
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.20,
            width: MediaQuery.of(context).size.width * .95,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.grey[350]),
            padding: EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  output,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 30),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  result,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black38,
                      fontSize: 30),
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.65,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        allClear();
                      },
                      child: Text(
                        'AC',
                        style: TextStyle(
                            color: Colors.blue[100],
                            fontWeight: FontWeight.bold),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.grey,
                          shadowColor: Colors.white,
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(25)),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        '-/+',
                        style: TextStyle(
                            color: Colors.blue[100],
                            fontWeight: FontWeight.bold),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.grey,
                          shadowColor: Colors.white,
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(25)),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        '%',
                        style: TextStyle(
                            color: Colors.blue[100],
                            fontWeight: FontWeight.bold),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.grey,
                          shadowColor: Colors.white,
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(25)),
                    ),
                    btn('/')
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [btn('1'), btn('2'), btn('3'), btn('x')],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [btn('4'), btn('5'), btn('6'), btn('-')],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [btn('7'), btn('8'), btn('9'), btn('+')],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    btn('.'),
                    btn('0'),
                    btn('00'),
                    ElevatedButton(
                      onPressed: rslt,
                      child: Text(
                        '=',
                        style: TextStyle(
                            color: Colors.blue[100],
                            fontWeight: FontWeight.bold),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.grey,
                          shadowColor: Colors.white,
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(25)),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
