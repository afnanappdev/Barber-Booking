import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Barber Booking',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF1A1F2E),
      ),
      home: const ServiceSelectionScreen(),
    );
  }
}

class ServiceSelectionScreen extends StatefulWidget {
  const ServiceSelectionScreen({Key? key}) : super(key: key);

  @override
  State<ServiceSelectionScreen> createState() =>
      _ServiceSelectionScreenState();
}

class _ServiceSelectionScreenState extends State<ServiceSelectionScreen> {
  List<String> selectedServices = [];

  final List<ServiceItem> services = [
    ServiceItem(
      id: 'classic_haircut',
      title: 'Classic Haircut',
      description: 'Professional cutting and styling',
      duration: '30min',
      price: '\$25',
      icon: 'C',
      color: const Color(0xFFFFA500),
    ),
    ServiceItem(
      id: 'beard_trim',
      title: 'Beard Trim',
      description: 'Precise beard s',
      duration: '20min',
      price: '\$15',
      icon: 'B',
      color: const Color(0xFFFFA500),
    ),
    ServiceItem(
      id: 'hot_towel_shave',
      title: 'Hot Towel Shave',
      description: 'Luxurious straight razor  ',
      duration: '45min',
      price: '\$35',
      icon: 'H',
      color: const Color(0xFFFFA500),
    ),
    ServiceItem(
      id: 'hair_wash_style',
      title: 'Hair Wash & Style',
      description: 'Deep cleansing and professional styling',
      duration: '25min',
      price: '\$20',
      icon: 'H',
      color: const Color(0xFFFFA500),
    ),
    ServiceItem(
      id: 'mustache_grooming',
      title: 'Mustache Grooming',
      description: 'Precision mustache trimming and styling',
      duration: '15min',
      price: '\$12',
      icon: 'M',
      color: const Color(0xFFFFA500),
    ),
    ServiceItem(
      id: 'full_service',
      title: 'Full Service Package',
      description: 'Complete beard trim and hot towel shave',
      duration: '90min',
      price: '\$65',
      icon: 'F',
      color: const Color(0xFFFFA500),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A1F2E),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1A1F2E),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Select Your Service',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 0.85,
                ),
                itemCount: services.length,
                itemBuilder: (context, index) {
                  final service = services[index];
                  final isSelected = selectedServices.contains(service.id);

                  return GestureDetector(
                    onTap: () => _toggleService(service.id),
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      decoration: BoxDecoration(
                        color: const Color(0xFF2A3142),
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          color: isSelected
                              ? const Color(0xFFFFA500)
                              : Colors.transparent,
                          width: 2,
                        ),
                        boxShadow: isSelected
                            ? [
                          BoxShadow(
                            color:
                            const Color(0xFFFFA500).withOpacity(0.3),
                            blurRadius: 8,
                            offset: const Offset(0, 4),
                          ),
                        ]
                            : [],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Icon and Button Row
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 40,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: service.color,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Center(
                                    child: Text(
                                      service.icon,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 12,
                                    vertical: 6,
                                  ),
                                  decoration: BoxDecoration(
                                    color: isSelected
                                        ? const Color(0xFFFFA500)
                                        : Colors.transparent,
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(
                                      color: isSelected
                                          ? const Color(0xFFFFA500)
                                          : Colors.grey.shade600,
                                    ),
                                  ),
                                  child: Text(
                                    isSelected ? 'Selected' : 'Select',
                                    style: TextStyle(
                                      color: isSelected
                                          ? Colors.white
                                          : Colors.grey.shade400,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            const SizedBox(height: 16),
                            Text(
                              service.title,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              service.description,
                              style: TextStyle(
                                color: Colors.grey.shade400,
                                fontSize: 12,
                                height: 1.3,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const Spacer(),
                            Row(
                              children: [
                                Icon(
                                  Icons.access_time,
                                  color: Colors.grey.shade500,
                                  size: 16,
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  service.duration,
                                  style: TextStyle(
                                    color: Colors.grey.shade400,
                                    fontSize: 12,
                                  ),
                                ),
                                const Spacer(),
                                Text(
                                  service.price,
                                  style: const TextStyle(
                                    color: Color(0xFFFFA500),
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),

          // Bottom Navigation Bar
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: const Color(0xFF2A3142),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  blurRadius: 10,
                  offset: const Offset(0, -5),
                ),
              ],
            ),
            child: SafeArea(
              child: Row(
                children: [
                  // Back Button
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () => Navigator.pop(context),
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: Colors.grey),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                      ),
                      child: const Text(
                        'Back',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  // Next Button
                  Expanded(
                    flex: 2,
                    child: ElevatedButton(
                      onPressed:
                      selectedServices.isNotEmpty ? _proceedToNext : null,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: selectedServices.isNotEmpty
                            ? const Color(0xFFFFA500)
                            : Colors.grey.shade700,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            selectedServices.isEmpty
                                ? 'Select a Service'
                                : 'Next (${selectedServices.length})',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          if (selectedServices.isNotEmpty) ...[
                            const SizedBox(width: 8),
                            const Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                              size: 18,
                            ),
                          ],
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _toggleService(String serviceId) {
    setState(() {
      if (selectedServices.contains(serviceId)) {
        selectedServices.remove(serviceId);
      } else {
        selectedServices.add(serviceId);
      }
    });
  }

  void _proceedToNext() {
    double totalPrice = 0;
    int totalDuration = 0;

    List<ServiceItem> selectedItems = [];

    for (String serviceId in selectedServices) {
      final service = services.firstWhere((s) => s.id == serviceId);
      selectedItems.add(service);
      totalPrice += double.parse(service.price.replaceAll('\$', ''));
      totalDuration += int.parse(service.duration.replaceAll('min', ''));
    }

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => BookingScreen(
          selectedServices: selectedItems,
          totalDuration: totalDuration,
          totalPrice: totalPrice,
        ),
      ),
    );
  }
}

class BookingScreen extends StatelessWidget {
  final List<ServiceItem> selectedServices;
  final int totalDuration;
  final double totalPrice;

  const BookingScreen({
    Key? key,
    required this.selectedServices,
    required this.totalDuration,
    required this.totalPrice,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A1F2E),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1A1F2E),
        title: const Text('Booking Confirmation'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Services Selected:',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            const SizedBox(height: 10),
            ...selectedServices.map(
                  (service) => Text(
                '- ${service.title}',
                style: const TextStyle(color: Colors.white70, fontSize: 16),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Total Duration: ${totalDuration} min',
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
            const SizedBox(height: 8),
            Text(
              'Total Price: \$${totalPrice.toStringAsFixed(2)}',
              style: const TextStyle(
                color: Color(0xFFFFA500),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ServiceItem {
  final String id;
  final String title;
  final String description;
  final String duration;
  final String price;
  final String icon;
  final Color color;

  ServiceItem({
    required this.id,
    required this.title,
    required this.description,
    required this.duration,
    required this.price,
    required this.icon,
    required this.color,
  });
}
