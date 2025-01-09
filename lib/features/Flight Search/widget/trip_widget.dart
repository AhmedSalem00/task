import 'package:flutter/material.dart';

class TripWidget extends StatelessWidget {
  const TripWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(
                Icons.flight,
                color: Color(0XFF63AF23),
              ),
              const SizedBox(width: 8),
              const Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'From',
                  ),
                ),
              ),
              const SizedBox(width: 16),
              CircleAvatar(
                backgroundColor: const Color(0XFFECF2E7),
                child: IconButton(
                  icon: const Icon(
                    Icons.swap_vert,
                    color: Color(0XFF63AF23),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          const Row(
            children: [
              Icon(
                Icons.location_on,
                color: Color(0XFF63AF23),
              ),
              SizedBox(width: 8),
              Expanded(
                child: TextField(
                  decoration:
                      InputDecoration(hintText: 'To', border: InputBorder.none),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
