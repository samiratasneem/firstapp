import 'package:firstapp/screens/single_item_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ItemsWidget extends StatelessWidget {

  List img= [
    'Vanilla_Cake',
    'Chocolate_Cake',
    'Theme_Cake',
    'Customize_Cake',

  ];

  @override
  Widget build(BuildContext context) {
   return GridView.count(
    physics: NeverScrollableScrollPhysics(

    ),
    crossAxisCount: 2,
    shrinkWrap: true,
    childAspectRatio: (150/195),
    children: [
      for(int i=0; i<img.length; i++) 
        Container(
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 13),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xFF212325),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.4),
                spreadRadius: 1,
                blurRadius: 8,

              ),
            ],
          ),
          child: Column(children: [
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SingleItemScreen(img[i])));
              },
              child: Container(
                margin: EdgeInsets.all(10),
                child: Image.asset("assets/${img[i]}.jpg", width: 120, height: 120, fit: BoxFit.contain,),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 8),
              child: Align(
                alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    img[i], 
                    style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  
                  ),
                  ),
                  SizedBox(height: 8),
                   Text(
                    "Best Cake", 
                    style: TextStyle(
                    fontSize: 15,
                    color: Colors.white60,
                  
                  ),
                  ),
                ],
              ),
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [ 
                  Text("\$30",style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white,
                  ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color(0xFFE57734),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Icon(CupertinoIcons.add,size:20, color: Colors.white,), 
                  ),
                ],
                ) ,
              ),
              
          ],
          ),
        
        ),
    ],
   );
  }
}