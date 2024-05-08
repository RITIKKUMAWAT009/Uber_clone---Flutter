import 'package:flutter/material.dart';

import '../../../common/widgets/custome_shape/circular_container.dart';


class HorizontalTextImage extends StatelessWidget {
  const HorizontalTextImage(
      {super.key,
      this.image = "assets/images/img_2.png",
      this.bottomText = ""});

  final String? bottomText;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 100,
      child: Stack(
        children: [
          CircularContainer(
            isBgTrue: false,
            radius: 7,
            height: 120,
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            backgroundColor: Colors.red,
          ),
          Positioned(
              height: 120,
              right: 10,
              top: 10,
              width: 150,
              child: CircularContainer(
                width: 100,
                radius: 0,
                isBgTrue: true,
                backgroundImage: image!,
              )),
          Positioned(
              top: 14,
              left: 15,
              child: Container(
                padding: const EdgeInsets.all(2),
                height: 50,
                width: 130,
                child: const Center(
                  child: Text(
                    'Ride on your terms',
                    maxLines: 2,
                    softWrap: true,
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              )),
          Positioned(
              bottom: 20,
              top: 0,
              left: 10,
              child: Center(
                child: Center(
                  child: TextButton(
                      onPressed: () {},
                      child: const Row(
                        children: [
                          Text(
                            "Learn more",
                            style: TextStyle(color: Colors.white),
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          )
                        ],
                      )),
                ),
              ))
        ],
      ),
    );
  }
}

