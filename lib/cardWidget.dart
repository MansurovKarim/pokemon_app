import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class cardWidget extends StatelessWidget {
  final String id;
  final String name;
  final String imageUrl;
  final Color color;



  const cardWidget({
    super.key,
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.color
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 122,
        width: 104,

        decoration: BoxDecoration(
          border: Border.all(color: color, width: 3),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 3),
              child: Text(
                id,
                style: TextStyle(color: color, fontSize: 8, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 3.5, vertical: 0.5),
              child: Image.network
                (
                imageUrl,
                width: 85, height: 85,
              ),
            ),
            Container(
              width: double.infinity,
              height: 15,
              color: color,
              child: Center(
                child: Text(
                  name,
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
            )
          ],
        )
    );

  }
}
