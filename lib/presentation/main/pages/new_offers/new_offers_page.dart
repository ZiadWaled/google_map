import 'package:flutter/material.dart';
import 'package:google_map_app/resources/color_manager.dart';
import 'package:google_map_app/screens/new_offers_body.dart';
import 'package:google_map_app/widgets/custom_appBar.dart';

class NewOffersPage extends StatelessWidget {
  const NewOffersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        image: 'assets/ss.png',
        icon: Icons.message,
        title: 'New Offers',
        colorTitle: ColorManager.primary,
        colorIcon: ColorManager.gray,
      ),
      body: NewOffersBody(),
    );
  }
}
