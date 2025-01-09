import 'package:flutter/material.dart';
import 'package:tasks/features/Flight%20Search/widget/hotel_widget.dart';
import 'package:tasks/features/Flight%20Search/widget/departure_widget.dart';
import 'package:tasks/features/Flight%20Search/widget/toggle_button_widget.dart';
import 'package:tasks/features/Flight%20Search/widget/travel_widget.dart';
import 'package:tasks/features/Flight%20Search/widget/trip_widget.dart';

class FlightSearchScreen extends StatelessWidget {
  const FlightSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Flights'),
        actions: [
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Banner Section
              Stack(
                children: [
                  Image.asset(
                    'assets/images/trip.png',
                    width: double.infinity,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                  const Positioned(
                    top: 10,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        "Let's start your trip",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // Search Criteria
              Column(
                children: [
                  const ToggleButtonWidget(),
                  const SizedBox(height: 16),
                  const TripWidget(),
                  const SizedBox(height: 16),
                  const DepartureWidget(),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          readOnly: true,
                          decoration: const InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            labelText: 'Travelers',
                            hintText: '1 Passenger',
                            border: OutlineInputBorder(),
                          ),
                          onTap: () {
                            // Handle travelers selection
                          },
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: TextField(
                          readOnly: true,
                          decoration: const InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            labelText: 'Cabin Class',
                            hintText: 'Economy Class',
                            border: OutlineInputBorder(),
                          ),
                          onTap: () {
                            // Handle cabin class selection
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  // Search Button
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0XFF63AF23)),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Search Flights',
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
              // Travel Inspirations
              const TravelInspirationsWidget(),
              const HotelWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
