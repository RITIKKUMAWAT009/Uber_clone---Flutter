import 'package:flutter/material.dart';
import 'package:uber_clone/src/constants/constants.dart';
class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(margin: const EdgeInsets.symmetric(vertical: 20),
      height: 50,
      padding: const EdgeInsets.only(left: 6),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: () {},
            style: const ButtonStyle(
              iconColor: MaterialStatePropertyAll(Colors.black),
              textStyle:
              MaterialStatePropertyAll(TextStyle(fontSize: 20)),
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.search,
                  size: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    Constants.whereTo,
                    style: const TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Container(height: 40,width: 3,margin: const EdgeInsets.only(left: 10),color: Colors.white,),
          Container(
            margin: const EdgeInsets.all(4),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50)),
            child: TextButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Icon(
                      Icons.access_time_rounded,
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Text(Constants.now),
                  ),
                  const Icon(
                    Icons.keyboard_arrow_down_outlined,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
