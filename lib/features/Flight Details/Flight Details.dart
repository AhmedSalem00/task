import 'package:flutter/material.dart';

class FlightDetailsScreen extends StatelessWidget {
  const FlightDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ezy Travel'),
        backgroundColor: const Color(0XFFC4E59E),
      ),
      body: Column(
        children: [
          // Header Section
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              padding: const EdgeInsets.all(16),
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'BLR - Bengaluru to DXB - Dubai',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const Text(
                    'Departure: Sat, 23 Mar - Return: Sat, 23 Mar',
                    style: TextStyle(fontSize: 14, color: Color(0XFF2F2F2F)),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      '(Round Trip)  Modify Search',
                      style: TextStyle(color: Colors.green),
                    ),
                  ),
                  const Divider(
                    thickness: 1,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('sort'),
                      Icon(Icons.keyboard_arrow_down),
                      SizedBox(width: 8),
                      Text('Non-Stop'),
                      Icon(Icons.keyboard_arrow_down),
                      SizedBox(width: 8),
                      Text('Filter'),
                      Icon(Icons.filter_list),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 8),
          // Date Selector
          Container(
            height: 50,
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                dateChip('Mar 22 - Mar 23', 'From AED 741', true),
                dateChip('Mar 23 - Mar 24', 'From AED 721', false),
                dateChip('Mar 24 - Mar 25', 'From AED 750', false),
              ],
            ),
          ),
          const SizedBox(height: 12),

          const Padding(
            padding: EdgeInsets.only(right: 230.0),
            child: Text(
              '851 Flight Found',
              style: TextStyle(fontSize: 15),
            ),
          ),
          const SizedBox(height: 8),
          Expanded(
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return flightCard();
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget dateChip(String date, String price, bool isSelected) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? Colors.green : Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column(
        children: [
          Text(
            date,
            style: TextStyle(
              fontSize: 12,
              color: isSelected ? Colors.white : Colors.black,
            ),
          ),
          Text(
            price,
            style: TextStyle(
              fontSize: 10,
              color: isSelected ? Colors.white : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }

  Widget flightCard() {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/images/flight.png'),
                const Text(
                  'Onward - Garuda Indonesia',
                ),
                const Text(
                  'AED 409',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.green),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  '14:35',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Image.asset('assets/images/airline_logo.png'),
                const Text(
                  '21:55',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 4),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('BLR - Bengaluru'),
                Text('4h 30m    '),
                Text('DXB - Dubai'),
              ],
            ),
            const Text(
              ' 2 Stops',
              style: TextStyle(fontSize: 12),
            ),
            const Divider(),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/images/flight.png'),

                const Text(
                  'Return - Garuda Indonesia',
                ),
                const Text(
                  'AED 359',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.green),
                ),
              ],
            ),
            const SizedBox(height: 8),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '21:55',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Icon(Icons.flight_land),
                Text('14:35',
                    style:
                        TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              ],
            ),
            const SizedBox(height: 4),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('DXB - Dubai'),
                Text('4h 30m    '),
                Text('BLR - Bengaluru'),
              ],
            ),

            const Text(
              '2 Stops',
              style: TextStyle(fontSize: 12),
            ),
            const SizedBox(height: 10,),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Cheapest'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Refundable'),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Flight Details',
                    style: TextStyle(color: Colors.orange, fontSize: 12),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
