import 'package:flutter/material.dart';

class ZodiacCard extends StatelessWidget {
  const ZodiacCard({
    super.key,
    required this.cardData,
    this.onTap,
  });

  final CardData cardData;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 6.0,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                cardData.imageURL,
                height: 80.0,
                width: 80.0,
                fit: BoxFit.cover,
              ),
            ),

            Text(
              cardData.name,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
            ),

            Text(
              cardData.description,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Colors.grey[600],
                  ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class CardData {
  const CardData({
    required this.description,
    required this.name,
    required this.imageURL,
  });

  final String description;
  final String name;
  final String imageURL;
}
