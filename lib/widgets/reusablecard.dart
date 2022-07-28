import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard(
      {required this.imgName,
      required this.categoryName,
      required this.onPress});
  final String imgName;
  final String categoryName;
  final Function onPress;
  void onPressAction() {
    onPress();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.black26,
      onTap: onPressAction,
      borderRadius: BorderRadius.circular(25),
      child: Container(
        height: 120,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Ink.image(
            image: AssetImage(imgName),
            fit: BoxFit.fill,
            child: Align(
                alignment: Alignment.bottomCenter,
                child: BorderedText(
                  strokeWidth: 4.0,
                  strokeColor: Colors.white54,
                  child: Text(
                    categoryName,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 21.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )),
          ),
        ),
      ),
    );
  }
}
