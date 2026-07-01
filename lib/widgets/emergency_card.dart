import 'package:flutter/material.dart';

import '../models/emergency_service.dart';
import '../services/call_service.dart';

class EmergencyCard extends StatelessWidget {
  final EmergencyService service;

  const EmergencyCard({
    super.key,
    required this.service,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(25),
      onTap: () {
        showDialog(
          context: context,
          builder: (_) {
            return AlertDialog(
              title: Text(service.title),
              content: Text(
                "Call ${service.number} ?",
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Cancel"),
                ),
                FilledButton(
                  onPressed: () {
                    Navigator.pop(context);
                    CallService.call(service.number);
                  },
                  child: const Text("Call"),
                ),
              ],
            );
          },
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: service.color,
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: service.color.withOpacity(.25),
              blurRadius: 12,
              offset: const Offset(0, 6),
            )
          ],
        ),
        padding: const EdgeInsets.all(18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 34,
              backgroundColor: Colors.white,
              child: Icon(
                service.icon,
                size: 38,
                color: service.color,
              ),
            ),
            const SizedBox(height: 18),
            Text(
              service.title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              service.subtitle,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white70,
              ),
            ),
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 14,
                vertical: 6,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Text(
                service.number,
                style: TextStyle(
                  color: service.color,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}