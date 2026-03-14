import 'package:flutter/material.dart';

class ReviewsList extends StatelessWidget {
  const ReviewsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      key: const ValueKey('reviews'),
      children: [
        _buildReviewTile(
          "John D.",
          "Amazing stay, highly recommend the spa!",
          3,
        ),
        _buildReviewTile("Sarah K.", "Great service, room was very clean.", 4),
        _buildReviewTile("Ahmed M.", "Very friendly staff and great view.", 5),
      ],
    );
  }

  Widget _buildReviewTile(String name, String comment, int stars) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(color: Colors.black.withValues(alpha: 0.05), blurRadius: 5),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(backgroundColor: Colors.blue[100], child: Text(name[0])),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
                Text(
                  comment,
                  style: const TextStyle(color: Colors.grey, fontSize: 13),
                ),
              ],
            ),
          ),
          Row(
            children: List.generate(
              5,
              (index) => Icon(
                Icons.star,
                size: 14,
                color: index < stars
                    ? const Color(0xFF4CAF50)
                    : Colors.grey[300],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
