import 'package:flutter/material.dart';
class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
     final borderStyle =
        OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30)));
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Container(
          height: 500,
          width: 300,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 234, 204, 240),
              border: Border.all(color: const Color.fromARGB(255, 20, 19, 19), width: 2),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration:
                      InputDecoration(labelText: "Email", border: borderStyle),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: TextField(
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                      labelText: "Password", border: borderStyle),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 50)),
                  child: Text("Login",style: TextStyle(fontWeight: FontWeight.bold),),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  }