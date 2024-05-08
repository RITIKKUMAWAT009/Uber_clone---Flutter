import 'package:flutter/material.dart';

import '../../../common/widgets/custome_shape/circular_container.dart';

class SuggestionContainer extends StatelessWidget {
  const SuggestionContainer({
    super.key,
    this.image,
    this.bottomText
  });
final String? bottomText;
final String? image;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircularContainer(isBgTrue: false,
          height: 100,
          width: 100,
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          backgroundColor: Colors.transparent,
          radius: 10,
          child: Image.asset(
            image!,
            height: 100,
          ),
        ),
        Positioned(
            top: 0,
            left: 20,
            right: 20,
            child: Center(
              child: Container(
                padding: const EdgeInsets.all(2),
                height: 25,
                width: 60,
                decoration: BoxDecoration(
                    color: Colors.green.shade700,
                    borderRadius: BorderRadius.circular(10)),
                child:  const Center(
                  child: Text(
                   'Promo',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            )),
         Positioned(
            bottom: 3,
            left: 10,
            right: 10,
            child: Center(
              child: Center(
                child: Text(
                  bottomText!,
                  style: const TextStyle(color: Colors.black),
                ),
              ),
            ))
      ],
    );
  }
}
