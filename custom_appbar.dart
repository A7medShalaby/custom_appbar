import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final AppBar appBar;
  final String text;
  final Color backgroundColor;
  final Color fontColor;
  final double fontSize;
  final Icon leadingIcon;
  const DetailsAppBar(this.text, this.backgroundColor, this.fontColor, this.fontSize, this.leadingIcon, {
    Key? key,
    required this.appBar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(55),
      child: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        leading: IconButton(
          icon: leadingIcon,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          text,
          style: GoogleFonts.quicksand(
            color: fontColor,
            fontWeight: FontWeight.bold,
            fontSize: fontSize,
          ),
        ),
        centerTitle: true,
        actions: [
          //Favorite button
          IconButton(
            icon: const Icon(
              Icons.favorite,
              color: Colors.red,
            ),
            onPressed: () {},
          ),
          //Notification button
          IconButton(
            icon: const Icon(
              Icons.notifications,
              color: Colors.blue,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
}
