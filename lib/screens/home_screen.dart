import 'package:flutter/material.dart';

import '../core/app_colors.dart';
import '../models/emergency_service.dart';
import '../widgets/emergency_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final services = [
      EmergencyService(
        title: "Police",
        subtitle: "Emergency Police",
        number: "122",
        icon: Icons.local_police,
        color: AppColors.police,
      ),
      EmergencyService(
        title: "Ambulance",
        subtitle: "Medical Emergency",
        number: "123",
        icon: Icons.medical_services,
        color: AppColors.ambulance,
      ),
      EmergencyService(
        title: "Fire Rescue",
        subtitle: "Fire Department",
        number: "180",
        icon: Icons.local_fire_department,
        color: AppColors.fire,
      ),
      EmergencyService(
        title: "Roadside",
        subtitle: "Road Assistance",
        number: "01221110000",
        icon: Icons.car_crash,
        color: AppColors.road,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Emergency Assistance",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Need Help?",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              "Choose the service you need.",
              style: TextStyle(
                color: Colors.grey.shade700,
              ),
            ),
            const SizedBox(height: 25),
            Expanded(
              child: GridView.builder(
                itemCount: services.length,
                gridDelegate:
                const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 18,
                  mainAxisSpacing: 18,
                  childAspectRatio: .9,
                ),
                itemBuilder: (context, index) {
                  return EmergencyCard(service: services[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}