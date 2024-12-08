import 'package:flutter/material.dart';
import 'package:work/const.dart';
import 'package:work/widgets/Container_custom_widget.dart';
import 'package:work/widgets/custom_appBar.dart';

class CustomWidgetSendOffer extends StatelessWidget {
  final List<Map<String, dynamic>> widgetData = [
    {
      'icon': Icons.touch_app,
      'text': 'UI & UX',
      'color': SecondColor,
    },
    {
      'icon': Icons.ios_share,
      'text': 'IOS',
      'color': kPrimaryColor,
    },
    {
      'icon': Icons.android,
      'text': 'Android',
      'color': kPrimaryColor,
    },
    {
      'icon': Icons.share,
      'text': 'Markiting',
      'color': SecondColor,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(
        image: 'assets/ss.png',
        icon: Icons.message,
        title: 'Send Order',
        colorTitle: kPrimaryColor,
        colorIcon: SecondColor,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title and Subtitle
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Our Service',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque eget ante facilisis gravida id ut enim.',
                  style: TextStyle(
                    fontSize: 16,
                    color: SecondColor,
                  ),
                ),
              ],
            ),
          ),

          // GridView with custom widgets
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: List.generate(
                  widgetData.length,
                  (index) => ContainerCustomWidget(
                    icon: widgetData[index]['icon'],
                    text: widgetData[index]['text'],
                    color: widgetData[index]['color'],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
