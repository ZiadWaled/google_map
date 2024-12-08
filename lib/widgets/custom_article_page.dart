import 'package:flutter/material.dart';
import 'package:google_map_app/widgets/custom_button.dart';

class CustomArticlePage extends StatelessWidget {
  const CustomArticlePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Text(
              'There are many variations of passages of Lorem Ipsum available, '
              'but the majority have suffered alteration in some form, by injected humour, '
              'or randomised words which don\'t look even slightly believable. '
              'If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t '
              'anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet '
              'tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. '
              'It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, '
              'to generate Lorem Ipsum which looks reasonable. '
              'The generated Lorem Ipsum is therefore always free from repetition, injected humour, '
              'or non-characteristic words etc.',
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
          ),
        ),
        SizedBox(height: 16),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Price',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '39',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
          ],
        ),
        SizedBox(height: 16),
        Center(
          child: CustomButton(),
        ),
      ],
    );
  }
}
