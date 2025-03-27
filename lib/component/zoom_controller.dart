import 'package:flutter/material.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';

class ZoomController extends StatelessWidget {
  final VoidCallback onZoomIn;
  final VoidCallback onZoomOut;
  const ZoomController ({super.key, required this.onZoomIn, required this.onZoomOut, });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 150, // Place them below the search bar
      right: 20,
      child: Container(
        width: 50,
        height: 105,
        color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 50,
              height: 50,
              color: Colors.blue,
              child: GestureDetector(
                onTap: onZoomIn,
                child: Icon(Icons.add),
              ),
            ),
            Container(
              width: 50,
              height: 50,
              color: Colors.green,
              child: GestureDetector(
                onTap: onZoomOut,
                child: Icon(Icons.remove),
              ),
            )
          ],
        ),
      ),
    );
  }
}
