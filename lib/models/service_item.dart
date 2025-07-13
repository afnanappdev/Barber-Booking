import 'package:flutter/material.dart';

class ServiceItem {
  final String id;
  final String title;
  final String description;
  final String duration;
  final String price;
  final IconData icon;

  const ServiceItem({
    required this.id,
    required this.title,
    required this.description,
    required this.duration,
    required this.price,
    required this.icon,
  });

  double get priceValue => double.parse(price.replaceAll('\$', ''));
  int get durationMinutes => int.parse(duration.replaceAll('min', ''));
} 