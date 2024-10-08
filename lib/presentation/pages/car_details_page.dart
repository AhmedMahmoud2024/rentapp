import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rentapp/presentation/widgets/car_card.dart';

import '../../data models/Car.dart';

class CarDetailsPage extends StatelessWidget {
  const CarDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.info_outline),
            Text("Information")
          ],
        ),
      ),
      body: Column(
        children: [
          CarCard(car: Car(model: "Fortuner Gr", distance: 870, fuelCapacity: 50, pricePerHour: 45),),
          SizedBox(height: 20,),
        Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xffF3F3F3),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10,
                          spreadRadius: 5
                      )
                    ]
                ),
                child: Column(
                  children: [
                    CircleAvatar(radius: 40,backgroundImage:AssetImage('assets/user.png'),),
                    SizedBox(height: 10,),
                    Text('Jan Cooper',style: TextStyle(fontWeight: FontWeight.bold),),
                    Text('\$4.253',style: TextStyle(color: Colors.grey),)
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                  height: 170,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(image: AssetImage('assets/maps.png'),
                          fit: BoxFit.cover
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            blurRadius: 10,
                            spreadRadius: 5
                        )
                      ]
                  )
              ),
            )
          ],
        )
        ],
      ),
    );
  }
}
