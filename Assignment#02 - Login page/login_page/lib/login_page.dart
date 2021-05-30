import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Assingnment Submisstion'),
        backgroundColor: Colors.blue,
      ),
      body: Column(children: [
        SizedBox(height: 100,),
        Center(
                  child: Container(
            height: 50,
            width: 300,
                    child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: 'E-mail',
              ),
            ),
          ),
        ),
        // SizedBox(height: 5,),
        Center(
                  child: Container(
            height: 50,
            width: 300,
                    child: TextField(
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                hintText: 'password',
              ),
            ),
          ),
        ),
        SizedBox(height: 30,),
        
          
             Container(  
              margin: EdgeInsets.all(25),  
              child: TextButton(  
                child: Text('Sign in'),
                  
                onPressed: () {},  
              ),  
            ), 
          
        
      ],)
      ,
    )
      
    ;
  }
}