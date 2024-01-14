import 'package:flutter/material.dart';


class TriangleWidget extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  const TriangleWidget({Key? key, required this.width, required this.height, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomTriangleClipper(),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            color: color,
          borderRadius: BorderRadius.only(topRight: Radius.circular(4))
        ),
      ),
    );
  }
}


class CustomTriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
