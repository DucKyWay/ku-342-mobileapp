import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final String imageLocation = "assets/images/hw05_layout_widget";

class CafeHomePage extends StatelessWidget {
  const CafeHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Good Morning, ${"Suphawinee"}",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.location_on_outlined, color: Colors.black),
            onPressed: () {
              // action
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildIconWithText(),
            _buildMembership(),
            _buildNewsPromotionSection(),
            _buildPromotion(),
          ],
        ),
      ),
    );
  }

  Widget _buildIconWithText() {
    return Container(
      height: 100,
      color: Colors.grey.shade200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _iconWithTextButton(Icons.coffee, "Drinks"),
          _iconWithTextButton(Icons.fastfood, "Bakery"),
          _iconWithTextButton(Icons.home, "At Home"),
          _iconWithTextButton(Icons.coffee_maker, "Tumbler"),
        ],
      ),
    );
  }

  Widget _buildMembership() {
    return Container(
      height: 110,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(color: Colors.green.shade900),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              Text(
                "Green ${126}",
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
              SizedBox(width: 4),
              Icon(Icons.star, color: Colors.white),
            ],
          ),

          const SizedBox(height: 8),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _progressBar(true),
              const SizedBox(width: 8),
              _progressBar(true),
              const SizedBox(width: 8),
              _progressBar(true),
              const SizedBox(width: 8),
              _progressBar(false),
              const SizedBox(width: 8),
              _progressBar(false),
            ],
          ),

          const SizedBox(height: 8),

          const Text(
            "Stars earned to redeem rewards",
            style: TextStyle(color: Colors.grey, fontSize: 16),
          ),
        ],
      ),
    );
  }

  Widget _buildNewsPromotionSection() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Text(
        "NEWS & PROMOTION",
        style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildPromotion() {
    return SizedBox(
      height: 350,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          _promoCard("Caramel Frappe", Colors.green, "${imageLocation}1.jpg"),
          _promoCard("So Much Yes", Colors.brown, "${imageLocation}2.jpg"),
          _promoCard(
            "Show your flavor",
            Colors.orange,
            "${imageLocation}3.jpeg",
          ),
          _promoCard("Summer", Colors.blue.shade700, "${imageLocation}4.jpg"),
        ],
      ),
    );
  }

  Widget _iconWithTextButton(IconData icon, String title) {
    return Column(
        children: [
          SizedBox(height: 10),
          IconButton(
            icon: Icon(icon, color: Colors.green, size: 36),
            onPressed: null,
          ),
          const SizedBox(width: 36),
          Text(title, style: TextStyle(fontSize: 14)),
        ],
    );
  }

  Widget _progressBar(bool filled) {
    return Container(
      width: 65,
      height: 9,
      decoration: BoxDecoration(
        color: filled ? Colors.greenAccent : Colors.grey.shade400,
      ),
    );
  }

  Widget _promoCard(String title, Color color, String image) {
    return Container(
      width: 220,
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          Image.asset(image, height: 300),
        ],
      ),
    );
  }
}
