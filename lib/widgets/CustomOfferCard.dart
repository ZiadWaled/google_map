import 'package:flutter/material.dart';
import 'package:google_map_app/resources/color_manager.dart';

class CustomOfferCard extends StatelessWidget {
  final String image;
  final String offerText;
  final String discount;
  final String validTill;
  final String buttonText;

  const CustomOfferCard({
    required this.image,
    required this.offerText,
    required this.discount,
    required this.validTill,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 310,
      child: Card(
        margin: const EdgeInsets.all(4),
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 200,
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                    width: 130,
                    height: 45,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: ColorManager.black.withOpacity(0.7),
                      borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(50)),
                    ),
                    child: Text(
                      discount,
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    offerText,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Icon(Icons.lock_clock, color: ColorManager.gray),
                      const SizedBox(width: 8),
                      Text(
                        'Till $validTill',
                        style:
                            TextStyle(fontSize: 14, color: ColorManager.black),
                      ),
                      const Spacer(),
                      Icon(Icons.phone, color: ColorManager.gray),
                      const SizedBox(width: 8),
                       Text('Take Offer',
                          style: TextStyle(fontSize: 14, color: ColorManager.black)),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
