import 'package:animation_task/widgets/bounce_button.dart';
import 'package:animation_task/widgets/expanded_hotel_card.dart';
import 'package:animation_task/widgets/offer_banner.dart';
import 'package:animation_task/widgets/price_slider.dart';
import 'package:animation_task/widgets/review_list.dart';
import 'package:animation_task/widgets/tab_switcher.dart';
import 'package:flutter/material.dart';

class SmartHotelBookingScreen extends StatefulWidget {
  const SmartHotelBookingScreen({super.key});

  @override
  State<SmartHotelBookingScreen> createState() =>
      _SmartHotelBookingScreenState();
}

class _SmartHotelBookingScreenState extends State<SmartHotelBookingScreen> {
  bool isOffers = true;
  double priceProgress = 0.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FB), // لون الخلفية في السكرين
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(Icons.arrow_back, color: Colors.black),
        title: const Text(
          "Smart Hotel Booking",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ExpandableHotelCard(),
            TabSwitcher(
              isOffers: isOffers,
              onChanged: (val) => setState(() => isOffers = val),
            ),
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 400),
              child: isOffers ? const OffersBanner() : const ReviewsList(),
            ),
            PriceSliderInput(
              onChanged: (val) => setState(() => priceProgress = val),
              progress: priceProgress,
            ),
            const SizedBox(height: 20),
            BounceButton(onTap: () {}),
            const SizedBox(height: 30),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book_online_outlined),
            label: "Bookings",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: "Favorites",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
