import 'package:flutter/material.dart';
import 'package:uber_clone/src/constants/constants.dart';
import 'package:uber_clone/src/screens/home/widgets/custome_carousal_slider.dart';
import 'package:uber_clone/src/screens/home/widgets/horizontal_text_image.dart';
import 'package:uber_clone/src/screens/home/widgets/search_bar.dart';

import 'widgets/heading_text.dart';
import 'widgets/suggestion_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(Constants.appBarTitle),
        ),
        titleTextStyle: const TextStyle(
          fontWeight: FontWeight.w700,
          color: Colors.black,
          fontSize: 30,
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomSearchBar(),
              HeadingText(showTextButton: true,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SuggestionContainer(
                        bottomText: "Trip",
                        image: "assets/images/img_1.png",
                      ),
                      SuggestionContainer(
                        bottomText: "Intercity",
                        image: "assets/images/img_1.png",
                      ),
                      SuggestionContainer(
                        bottomText: "Group ride",
                        image: "assets/images/img_1.png",
                      ),
                      SuggestionContainer(
                        bottomText: "Reserve",
                        image: "assets/images/img_1.png",
                      ),
                    ],
                  ),
                ),
              ),
              CustomCarousalSlider(
                item: [
                  HorizontalTextImage(
                    image: "assets/images/img.png",
                  ),
                  HorizontalTextImage(
                    image: "assets/images/img_1.png",
                  ),
                  HorizontalTextImage(
                    image: "assets/images/img_2.png",
                  ),
                  HorizontalTextImage(
                    image: "assets/images/img.png",
                  ),
                ],
              ),
              HeadingText(showTextButton: false),
            ],
            
          ),
        ),
      ),
    );
  }
}

