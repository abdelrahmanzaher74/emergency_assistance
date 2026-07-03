import 'package:flutter/material.dart';

import '../core/app_colors.dart';
import '../models/emergency_service.dart';
import '../widgets/emergency_card.dart';
import 'articles_screen.dart';
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
      EmergencyService(
        title: "Police",
        subtitle: "Emergency Police",
        number: "122",
        icon: Icons.local_police,
        color: AppColors.police,
      ),
      EmergencyService(
        title: "Electricity",
        subtitle: "Electric Emergency",
        number: "121",
        icon: Icons.electric_bolt,
        color: Colors.amber,
      ),
      EmergencyService(
        title: "Gas",
        subtitle: "Gas Emergency",
        number: "129",
        icon: Icons.local_gas_station,
        color: Colors.orange,
      ),
      EmergencyService(
        title: "Tourist Police",
        subtitle: "Tourist Assistance",
        number: "126",
        icon: Icons.travel_explore,
        color: Colors.teal,
      ),
    ];

    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: Colors.grey[50], // Light neutral background to make cards pop
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
        title: Text(
          "Emergency Assistance",
          style: theme.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline, color: Colors.black54),
            onPressed: () {}, // Optional placeholder for app info/guidelines
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              // Prominent, clear header section
              Text(
                "Need Help?",
                style: theme.textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.w900,                color: Colors.black,
                  letterSpacing: -0.5,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                "Select a service below to get immediate assistance.",
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: Colors.grey[600],
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const ArticlesScreen(),
                      ),
                    );
                  },
                  icon: const Icon(Icons.menu_book),
                  label: const Text("First Aid Steps"),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),
              // Services Grid Layout
              Expanded(
                child: GridView.builder(
                  physics: const BouncingScrollPhysics(), // Premium native scroll feel
                  itemCount: services.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    childAspectRatio: 0.85, // Optimized ratio for text and icons
                  ),
                  itemBuilder: (context, index) {
                    return EmergencyCard(service: services[index]);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}