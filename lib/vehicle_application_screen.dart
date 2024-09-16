import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class VehicleApplicationScreen extends StatelessWidget {
  final TextEditingController _vehicleNumberController =
      TextEditingController();
  final TextEditingController _timeSlotController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Vehicle Application')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Lottie.asset(
              'assets/car_animation.json',
              width: 200,
              height: 200,
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _vehicleNumberController,
              decoration: InputDecoration(labelText: 'Vehicle Number'),
            ),
            TextField(
              controller: _timeSlotController,
              decoration: InputDecoration(labelText: 'Preferred Time Slot'),
            ),
            ElevatedButton(
              onPressed: () {
                // Submit vehicle application details
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
