import 'package:flutter/material.dart';
import 'package:google_map_app/data/on_boarding_data.dart';
import 'package:google_map_app/models/on_boarding_model.dart';
import 'package:google_map_app/presentation/main/main_view.dart';
import 'package:google_map_app/resources/color_manager.dart';
import 'package:google_map_app/resources/constants_manager.dart';
import 'package:google_map_app/resources/values_manager.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              itemCount: onBoardingPages.length,
              itemBuilder: (context, index) {
                final page = onBoardingPages[index];
                return _onBoardingView(page);
              },
            ),
          ),
          _buildDotsIndicator(),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: ElevatedButton(
              onPressed: () {
                if (_currentPage == onBoardingPages.length - 1) {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => MainPage()),
                  );
                } else {
                  _pageController.nextPage(
                    duration: const Duration(
                        milliseconds: AppConstants.sliderAnimation),
                    curve: Curves.easeInOut,
                  );
                }
              },
              child: Text(_currentPage == onBoardingPages.length - 1
                  ? 'Finish'
                  : 'Next'),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _onBoardingView(OnBoardingModel page) {
    return Padding(
      padding: const EdgeInsets.all(AppPadding.p16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: NetworkImage(page.imagePath),
            height: AppSize.s200,
          ),
          const SizedBox(height: AppSize.s20),
          Text(
            page.title,
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          const SizedBox(height: AppSize.s10),
          Text(
            page.description,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ],
      ),
    );
  }

  Widget _buildDotsIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        onBoardingPages.length,
        (index) => Container(
          margin: const EdgeInsets.symmetric(horizontal: 5),
          width: _currentPage == index ? 12 : 8,
          height: _currentPage == index ? 12 : 8,
          decoration: BoxDecoration(
            color: _currentPage == index ? ColorManager.primary : Colors.grey,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
