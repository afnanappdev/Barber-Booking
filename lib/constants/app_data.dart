import 'package:flutter/material.dart';
import '../models/service_item.dart';

class AppData {
  static const String appName = 'Elite Barbershop';
  static const String appTagline = 'Professional grooming services';
  
  static const List<ServiceItem> services = [
    ServiceItem(
      id: 'classic_haircut',
      title: 'Classic Haircut',
      description: 'Professional cutting and styling',
      duration: '30min',
      price: '\$25',
      icon: Icons.content_cut_rounded,
    ),
    ServiceItem(
      id: 'beard_trim',
      title: 'Beard Trim',
      description: 'Precise beard shaping',
      duration: '20min',
      price: '\$15',
      icon: Icons.face_rounded,
    ),
    ServiceItem(
      id: 'hot_towel_shave',
      title: 'Hot Towel Shave',
      description: 'Luxurious straight razor shave',
      duration: '45min',
      price: '\$35',
      icon: Icons.spa_rounded,
    ),
    ServiceItem(
      id: 'full_service',
      title: 'Full Service Package',
      description: 'Complete grooming experience',
      duration: '90min',
      price: '\$65',
      icon: Icons.star_rounded,
    ),
  ];
} 