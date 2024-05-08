import 'package:flutter/material.dart';

class CircularContainer extends StatelessWidget {
  const CircularContainer(
      {super.key,
      this.width = 400,
      this.height = 400,
      this.radius = 400,
      this.padding = 0,
      this.margin,
      this.backgroundColor = Colors.white,
      this.child,
      this.backgroundImage = "assets/images/img_1.png",
      required this.isBgTrue});

  final double? width;
  final double? height;
  final String backgroundImage;
  final bool isBgTrue;
  final double radius;
  final double padding;
  final Widget? child;
  final Color backgroundColor;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade300,
                offset: Offset(0.0, 1.0),
                blurRadius: 10,
                spreadRadius: 2,
                blurStyle: BlurStyle.outer)
          ],
          borderRadius: BorderRadius.circular(radius),
          color: backgroundColor,
          image: isBgTrue
              ? DecorationImage(
                  image: AssetImage(backgroundImage), fit: BoxFit.cover)
              : null),
      child: child,
    );
  }
}
