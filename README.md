# Elite Barbershop - Minimal Flutter Booking App

A clean, minimal Flutter application for booking barber appointments at a single shop.

## Features

- **Minimal UI/UX**: Clean, simple design focused on essential functionality
- **Service Selection**: Choose from core grooming services
- **Booking Summary**: Review selected services and pricing
- **Fast & Lightweight**: Optimized for performance and simplicity

## Project Structure

```
lib/
├── constants/
│   ├── app_colors.dart      # Centralized color definitions
│   └── app_data.dart        # Core app data (services only)
├── models/
│   └── service_item.dart    # Service data model
├── screens/
│   ├── home_screen.dart     # Simple home screen
│   ├── service_selection_screen.dart  # Service selection
│   └── booking_screen.dart  # Booking confirmation
└── main.dart               # App entry point
```

## Code Organization Benefits

### 1. **Minimal & Focused**
- Only essential features included
- Clean, uncluttered interface
- Fast loading and navigation

### 2. **Easy Maintenance**
- Simple file structure
- Clear, readable code
- No unnecessary complexity

### 3. **User-Friendly**
- Intuitive navigation
- Clear service selection
- Simple booking process

### 4. **Performance Optimized**
- Minimal dependencies
- Efficient widget structure
- Fast rendering

## Getting Started

1. **Install Dependencies**
   ```bash
   flutter pub get
   ```

2. **Run the App**
   ```bash
   flutter run
   ```

## Key Components

### ServiceItem Model
```dart
class ServiceItem {
  final String id;
  final String title;
  final String description;
  final String duration;
  final String price;
  final IconData icon;
  
  // Helper getters for price and duration
  double get priceValue => double.parse(price.replaceAll('\$', ''));
  int get durationMinutes => int.parse(duration.replaceAll('min', ''));
}
```

### App Colors
Centralized color management:
```dart
class AppColors {
  static const Color primary = Color(0xFF4A90E2);
  static const Color textPrimary = Color(0xFF2C3E50);
  // ... more colors
}
```

## App Flow

1. **Home Screen**: Simple welcome with booking button
2. **Service Selection**: Choose from 4 core services
3. **Booking Summary**: Review and confirm appointment

## Services Offered

- **Classic Haircut** - \$25 (30 min)
- **Beard Trim** - \$15 (20 min)
- **Hot Towel Shave** - \$35 (45 min)
- **Full Service Package** - \$65 (90 min)

## Customization

### Adding New Services
Edit `lib/constants/app_data.dart`:
```dart
static const List<ServiceItem> services = [
  // Add new services here
  ServiceItem(
    id: 'new_service',
    title: 'New Service',
    description: 'Service description',
    duration: '30min',
    price: '\$30',
    icon: Icons.new_icon,
  ),
];
```

### Changing Colors
Edit `lib/constants/app_colors.dart` to update the app's color scheme.

## Dependencies

- **flutter**: Core Flutter framework
- **cupertino_icons**: iOS-style icons

## Design Philosophy

- **Minimalism**: Only essential features
- **Simplicity**: Clean, uncluttered interface
- **Speed**: Fast loading and navigation
- **Usability**: Intuitive user experience

## Future Enhancements

- Date/time selection
- User profiles
- Payment integration
- Appointment history
- Push notifications

## Contributing

1. Keep it simple and minimal
2. Follow existing code structure
3. Maintain clean, readable code
4. Test thoroughly
5. Update documentation

## License

This project is for educational and commercial use.
