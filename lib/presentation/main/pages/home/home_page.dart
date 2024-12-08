

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<String> images = List.generate(
    10,
        (index) => 'https://images.skynewsarabia.com/images/v2/2023/10/03/1658558/800/450/1-1658558.jpeg',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Home Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionTitle(title: 'Sponsored Ads'),
            const SizedBox(height: 16),
            HorizontalImageList(images: images),
            const SizedBox(height: 24),
            const SectionTitle(title: 'Our Services'),
            const SizedBox(height: 16),
            const IconButtonRow(),
            const SizedBox(height: 24),
            const SectionTitle(title: 'Our Team'),
            const SizedBox(height: 16),
            const OurTeamStats(),
            const SizedBox(height: 24),
            const SectionTitle(title: 'Portfolio'),
            const SizedBox(height: 16),
            Expanded(child: VerticalImageList(images: images)),
          ],
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context)
          .textTheme
          .titleMedium
          ?.copyWith(color: Colors.deepPurple, fontWeight: FontWeight.bold),
    );
  }
}

class HorizontalImageList extends StatelessWidget {
  final List<String> images;
  const HorizontalImageList({required this.images, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        itemCount: images.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(2),
            child: ImageCard(imageUrl: images[index]),
          );
        },
      ),
    );
  }
}

class VerticalImageList extends StatelessWidget {
  final List<String> images;
  const VerticalImageList({required this.images, super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (context, index) {
        return ImageCard(imageUrl: images[index]);
      },
    );
  }
}

class ImageCard extends StatelessWidget {
  final String imageUrl;
  const ImageCard({required this.imageUrl, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: AspectRatio(
        aspectRatio: 3 / 1,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.deepPurple.withOpacity(0.2),
                blurRadius: 6,
                offset: const Offset(2, 2),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}

class OurTeamStats extends StatelessWidget {
  const OurTeamStats({super.key});

  @override
  Widget build(BuildContext context) {
    const teamStats = [
      {'text': 'Engineers', 'num': '30'},
      {'text': 'Projects', 'num': '50'},
      {'text': 'Experience', 'num': '25'},
      {'text': 'Clients', 'num': '70'},
    ];

    return Row(
      children: teamStats
          .map(
            (stat) => Expanded(
          child: Column(
            children: [
              Text(
                stat['num']!,
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(color: Colors.greenAccent),
              ),
              Text(
                stat['text']!,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(color: Colors.green),
              ),
            ],
          ),
        ),
      )
          .toList(),
    );
  }
}

class IconButtonRow extends StatelessWidget {
  const IconButtonRow({super.key});

  @override
  Widget build(BuildContext context) {
    const icons = [
      Icons.phone_android,
      Icons.android,
      Icons.build,
      Icons.design_services,
    ];
    const texts = [
      'UI & UX',
      'iOS',
      'Build',
      'Services',
    ];

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(icons.length, (index) {
        return Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: IconContainerWithText(
              icon: icons[index],
              text: texts[index],
            ),
          ),
        );
      }),
    );
  }
}

class IconContainerWithText extends StatelessWidget {
  final IconData icon;
  final String text;
  const IconContainerWithText({required this.icon, required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.blueAccent.withOpacity(0.1),
          ),
          child: Icon(
            icon,
            color: Colors.blueAccent,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          text,
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(color: Colors.blueAccent),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}