import 'package:company_flutter/presentation/main/main_view.dart';
import 'package:company_flutter/presentation/resources/color_manager.dart';
import 'package:company_flutter/presentation/resources/values_manager.dart';
import 'package:company_flutter/presentation/widget/main_text.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Product> products = [
    Product(
      image: 'https://via.placeholder.com/150',
      title: 'Product 1',
      description: 'Description for product 1',
      rate: 4.5,
      count: 100,
      price: '\$10',
    ),
    Product(
      image: 'https://via.placeholder.com/150',
      title: 'Product 2',
      description: 'Description for product 2',
      rate: 4.0,
      count: 200,
      price: '\$20',
    ),
    Product(
      image: 'https://via.placeholder.com/150',
      title: 'Product 3',
      description: 'Description for product 3',
      rate: 4.8,
      count: 150,
      price: '\$30',
    ),
    Product(
      image: 'https://via.placeholder.com/150',
      title: 'Product 4',
      description: 'Description for product 4',
      rate: 3.9,
      count: 50,
      price: '\$40',
    ),
    Product(
      image: 'https://via.placeholder.com/150',
      title: 'Product 5',
      description: 'Description for product 5',
      rate: 4.2,
      count: 80,
      price: '\$50',
    ),
    Product(
      image: 'https://via.placeholder.com/150',
      title: 'Product 6',
      description: 'Description for product 6',
      rate: 4.3,
      count: 120,
      price: '\$60',
    ),
    Product(
      image: 'https://via.placeholder.com/150',
      title: 'Product 7',
      description: 'Description for product 7',
      rate: 3.8,
      count: 90,
      price: '\$70',
    ),
    Product(
      image: 'https://via.placeholder.com/150',
      title: 'Product 8',
      description: 'Description for product 8',
      rate: 4.6,
      count: 110,
      price: '\$80',
    ),
    Product(
      image: 'https://via.placeholder.com/150',
      title: 'Product 9',
      description: 'Description for product 9',
      rate: 4.7,
      count: 130,
      price: '\$90',
    ),
    Product(
      image: 'https://via.placeholder.com/150',
      title: 'Product 10',
      description: 'Description for product 10',
      rate: 4.4,
      count: 140,
      price: '\$100',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 200, 
            child: ListView.builder(
              itemCount: products.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final product = products[index];
                return Padding(
                  padding: const EdgeInsets.all(AppPadding.p8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Image.network(
                          product.image,
                          fit: BoxFit.cover,
                          width: 150,
                        ),
                      ),
                      const SizedBox(height: AppSize.s8),
                      MainText(
                        product.title,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        maxLines: 2,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: AppSize.s4),
                      MainText(
                        product.description,
                        fontSize: 10,
                        color: ColorManager.grey1,
                        fontWeight: FontWeight.w300,
                        maxLines: 2,
                        textAlign: TextAlign.start,
                      ),
                      const SizedBox(height: AppSize.s4),
                      MainText(
                        product.price,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: ColorManager.primary,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

