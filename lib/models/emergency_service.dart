import 'package:flutter/material.dart';

class EmergencyService {
  final String title;
  final String subtitle;
  final String number;
  final IconData icon;
  final Color color;

  EmergencyService({
    required this.title,
    required this.subtitle,
    required this.number,
    required this.icon,
    required this.color,
  });
}