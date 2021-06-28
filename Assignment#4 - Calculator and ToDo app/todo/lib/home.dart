import 'package:flutter/material.dart';

class Todos extends StatefulWidget {
  // const Todos({ Key? key }) : super(key: key);

  @override
  _TodosState createState() => _TodosState();
}

class _TodosState extends State<Todos> {
  List<dynamic> todos = [];
  var outputt = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              "Todos",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.white,
            actions: [
              Icon(
                Icons.notifications,
                color: Colors.black,
                size: 30.0,
              ),
            ],
          ),
          body: ListView.builder(
              shrinkWrap: true,
              itemCount: todos.length,
              itemBuilder: (context, index) {
                return Container(
                    // BoxFit:BoxFit.fill
                    // decoration: BoxDecoration(),
                    margin: EdgeInsets.all(8.0),
                    // height: 50,
                    color: Colors.amberAccent,
                    child: ListTile(
                      title: Text("${todos[index]}"),
                      trailing: SizedBox(
                        width: 50,
                        height: 50,
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        title: Text("Update"),
                                        content: TextField(onChanged: (value) {
                                          outputt = value;
                                        }),
                                        actions: [
                                          ElevatedButton(
                                            onPressed: () {
                                              setState(() {
                                                todos.replaceRange(
                                                    index, index + 1, {
                                                  outputt
                                                }); // here we use curly braces for convert outputt to dynamic otherwise it throw an error
                                              });
                                              Navigator.of(context).pop();
                                            },
                                            child: Text("Update"),
                                          ),
                                        ],
                                      );
                                    });
                              },
                              child: Icon(Icons.edit),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  todos.removeAt(index);
                                });
                              },
                              child: Icon(Icons.delete),
                            ),
                          ],
                        ),
                      ),
                    ));
              }),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("NewTask"),
                      content: TextField(onChanged: (value) {
                        outputt = value;
                      }),
                      actions: [
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                todos.add(outputt);
                              });
                              Navigator.of(context)
                                  .pop(); // it will disappear thedialogafterpress add button
                            },
                            child: Text("Add"))
                      ],
                    );
                  });
            },
            child: Text("Add"),
          ),
        ),
      ),
    );
  }
}
