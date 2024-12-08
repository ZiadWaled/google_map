import 'package:flutter/material.dart';
import 'package:google_map_app/widgets/CustomOfferCard.dart';

class NewOffersBody extends StatelessWidget {
  const NewOffersBody({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> offers = [
      {
        'image': 'assets/ss.png',
        'offerText': 'Build New Home',
        'discount': '25% OFF',
        'validTill': '23-8-2021',
        'buttonText': 'Take Offer',
      },
      {
        'image': 'assets/ss.png',
        'offerText': 'Decorate Your Space',
        'discount': '30% OFF',
        'validTill': '30-8-2021',
        'buttonText': 'Get Now',
      },
      {
        'image': 'assets/ss.png',
        'offerText': 'Upgrade Furniture',
        'discount': '15% OFF',
        'validTill': '15-9-2021',
        'buttonText': 'Explore',
      },
      {
        'image': 'assets/ss.png',
        'offerText': 'Upgrade Furniture',
        'discount': '15% OFF',
        'validTill': '15-9-2021',
        'buttonText': 'Explore',
      },
      {
        'image': 'assets/ss.png',
        'offerText': 'Upgrade Furniture',
        'discount': '15% OFF',
        'validTill': '15-9-2021',
        'buttonText': 'Explore',
      },
      {
        'image': 'assets/ss.png',
        'offerText': 'Upgrade Furniture',
        'discount': '15% OFF',
        'validTill': '15-9-2021',
        'buttonText': 'Explore',
      },
      {
        'image': 'assets/ss.png',
        'offerText': 'Upgrade Furniture',
        'discount': '15% OFF',
        'validTill': '15-9-2021',
        'buttonText': 'Explore',
      },
      {
        'image': 'assets/ss.png',
        'offerText': 'Upgrade Furniture',
        'discount': '15% OFF',
        'validTill': '15-9-2021',
        'buttonText': 'Explore',
      },
    ];

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: offers.length,
      itemBuilder: (context, index) {
        final offer = offers[index];
        return CustomOfferCard(
          image: offer['image']!,
          offerText: offer['offerText']!,
          discount: offer['discount']!,
          validTill: offer['validTill']!,
          buttonText: offer['buttonText']!,
        );
      },
    );
  }
}
