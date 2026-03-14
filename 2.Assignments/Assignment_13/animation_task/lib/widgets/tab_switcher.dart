import 'package:flutter/material.dart';

class TabSwitcher extends StatelessWidget {
  final bool isOffers;
  final Function(bool) onChanged;

  const TabSwitcher({
    super.key,
    required this.isOffers,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 50,
      decoration: BoxDecoration(
        color: Color(0xffE0EBF5),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        children: [
          AnimatedAlign(
            duration: const Duration(milliseconds: 250),
            alignment: isOffers ? Alignment.centerLeft : Alignment.centerRight,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.45,
              decoration: BoxDecoration(
                color: const Color(0xff1975D2),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
          Row(
            children: [
              _buildTabButton("Offers", isOffers, () => onChanged(true)),
              _buildTabButton(
                "Guest Reviews",
                !isOffers,
                () => onChanged(false),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTabButton(String label, bool active, VoidCallback onTap) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              color: active ? Colors.white : Colors.black54,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
