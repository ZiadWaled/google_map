import 'package:company_flutter/presentation/main/pages/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:company_flutter/presentation/widget/main_text.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomePage(), 
    const OffersPage(),
    const SendOfferPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: _onTabTapped,
      backgroundColor: ColorManager.primary,
      selectedItemColor: ColorManager.white,
      unselectedItemColor: ColorManager.grey1,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.local_offer),
          label: 'Offers',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.send),
          label: 'Send Offer',
        ),
      ],
    );
  }

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}

class OffersPage extends StatelessWidget {
  const OffersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const PageContent(pageTitle: 'Offers Page');
  }
}

class SendOfferPage extends StatelessWidget {
  const SendOfferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const PageContent(pageTitle: 'Send Offer Page');
  }
}

class PageContent extends StatelessWidget {
  final String pageTitle;

  const PageContent({required this.pageTitle, super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        pageTitle,
        style: getSemiBoldStyle(
            color: ColorManager.darkGray, fontSize: FontSize.s22),
      ),
    );
  }
}

class Product {
  final String image;
  final String title;
  final String description;
  final double rate;
  final int count;
  final String price;

  Product({
    required this.image,
    required this.title,
    required this.description,
    required this.rate,
    required this.count,
    required this.price,
  });
}
