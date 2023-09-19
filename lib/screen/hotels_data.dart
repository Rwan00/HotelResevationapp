import 'package:flutter/material.dart';

class HotelsData extends StatelessWidget {
  String imagePath;
  HotelsData(this.imagePath);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Container(
        height: 450,
        width: 350,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
            color: Color.fromRGBO(226, 246, 245, 1)),
        child: Stack(
          children: [
            Image.asset('$imagePath'),
            Positioned(
                top: 20.0,
                left: 15.0,
                child: Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                  size: 34,
                )),
            Positioned(
              top: 257,
              left: 17,
              child: Row(
                children: [
                  Text(
                    'Sky View Suites Hotel',
                    style: TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 100.0,
                  ),
                  Image.asset('assets/Frame 44.png')
                ],
              ),
            ),
            Positioned(
              top: 300,
              left: 40,
              child: Column(
                children: [
                  Text(
                    'Very Good',
                    style: TextStyle(fontSize: 12),
                  ),
                  Text(
                    '1,048 Ratings',
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
            ),
            Positioned(
                top: 360,
                left: 35,
                child: Row(
                  children: [
                    Icon(Icons.shopping_cart_outlined,size: 36,),
                    SizedBox(
                      width: 135,
                    ),
                    Column(
                      children: [
                        Text(
                          'Price started from',
                          style: TextStyle(fontSize: 14),
                        ),
                        Text(
                          '1,882 EGP',
                          style: TextStyle(fontSize: 14),
                        ),
                        Text(
                          'for every night',
                          style: TextStyle(fontSize: 14),
                        )
                      ],
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}