import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rentapp/presentation/widgets/car_card.dart';

import '../../data models/Car.dart';

class CarListScreen extends StatelessWidget {

  final List<Car> cars = [
    Car(model: "Fortuner Gr", distance: 870, fuelCapacity: 50, pricePerHour: 45),
    Car(model: "Fortuner Gr", distance: 870, fuelCapacity: 50, pricePerHour: 45),
    Car(model: "Fortuner Gr", distance: 870, fuelCapacity: 50, pricePerHour: 45),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Choose Your Car"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: ListView.builder(
        itemCount: cars.length,
          itemBuilder: (context,index){
          return CarCard(car: cars[index]);
          },

      ),
    );
  }
}
