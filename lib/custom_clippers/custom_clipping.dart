import 'package:flutter/material.dart';

class CustomClipping extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0.0, size.height);
    var startPoints = Offset(size.width * 0.5, size.height - 30.0);
    var startControlPoints = Offset(size.width * 0.25, size.height - 50.0);
    path.quadraticBezierTo(startControlPoints.dx, startControlPoints.dy,
        startPoints.dx, startPoints.dy);
    var endpoints = Offset(size.width, size.height - 80.0);
    var endcontrolpoints = Offset(size.width * 0.75, size.height);
    path.quadraticBezierTo(
        endcontrolpoints.dx, endcontrolpoints.dy, endpoints.dx, endpoints.dy);
    path.lineTo(size.width, 0.0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
} 