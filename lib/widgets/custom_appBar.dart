import 'package:flutter/material.dart';
import 'package:work/widgets/custom_article_page.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar(
      {super.key,
      required this.image,
      required this.icon,
      required this.title,
      required this.colorTitle,
      required this.colorIcon});
  final String image;
  final IconData icon;
  final String title;
  final Color colorTitle;
  final Color colorIcon;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image(
            image: AssetImage(image),
            fit: BoxFit.cover,
          )),
      title: Text(
        title,
        style: TextStyle(
            fontSize: 18, fontWeight: FontWeight.bold, color: colorTitle),
      ),
      centerTitle: true,
      actions: [
        IconButton(
          icon: Icon(
            icon,
            color: colorIcon,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CustomArticlePage()),
            );
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}