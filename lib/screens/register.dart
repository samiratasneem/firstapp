import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    final borderStyle =
        OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30)));
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Register Page", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Container(
          height: 500,
          width: 300,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 234, 204, 240),
            border: Border.all(color: const Color.fromARGB(255, 206, 201, 201), width: 2),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: " First Name", 
                    border: borderStyle
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: " Last Name", 
                    border: borderStyle
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    labelText: " Phone Number", 
                    border: borderStyle
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "Email", 
                    border: borderStyle
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: TextField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password", 
                    border: borderStyle
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: ElevatedButton(
                  onPressed: () {
                  
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => UserAccount()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 50),
                    backgroundColor: Colors.amber,
                  ),
                  child: Text(
                    "Register", 
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// Simple User Account Interface
class UserAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Account", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/profile_placeholder.png'),
            ),
            SizedBox(height: 20),
            Text(
              "Welcome to Your Account!",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            SizedBox(height: 30),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Account Details",style: TextStyle(color: Colors.amber),),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.shopping_bag),
              title: Text("My Orders",style: TextStyle(color: Colors.amber),),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text("Favorites", style: TextStyle(color: Colors.amber),),
              onTap: () {},
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); 
              },
              child: Text("Log Out"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
              ),
            ),
          ],
        ),
      ),
    );
  }
}