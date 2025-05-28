import 'package:firstapp/home.dart';
import 'package:firstapp/screens/home_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  //const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: EdgeInsets.only(top: 100, bottom: 40),
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage("assets/bgc1.jpg"),
            fit: BoxFit.fill,
            opacity: 0.6,
            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(""),
            Column(children: [
              Text("Looking for Home-made Cake?",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                letterSpacing: 1,
              ),
              ),
              SizedBox(height: 10),
              Material(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(6),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      
                      builder: (context)=>HomeeScreen(),
                      ),
                      );
                  },
                  child:Container(
                    padding: EdgeInsets.symmetric(vertical: 3, horizontal: 20),
                    
                    child: Text("Get Start", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white)),
                  ),
                ),
              ),
            ],
            ),
          ],
        ),
      ),
    
    );
  }
}