import 'package:flutter/material.dart';

class MyDescriptionBox extends StatelessWidget {
  const MyDescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {
    //textStyle
    var myPrimartTextStyle =
        TextStyle(color: Theme.of(context).colorScheme.inversePrimary);
    var mySecondaryTextStyle =
        TextStyle(color: Theme.of(context).colorScheme.primary);

    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).colorScheme.secondary),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(25),
      margin: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //delivery cost
          Column(
            children: [
              Text(
                '\u{20B9}50',
                style: myPrimartTextStyle,
              ),
              Text(
                "Delivery fee",
                style: mySecondaryTextStyle,
              ),
            ],
          ),

          //delivery time
          Column(
            children: [
              Text(
                '15-30 minutes',
                style: myPrimartTextStyle,
              ),
              Text(
                "Delivery time",
                style: mySecondaryTextStyle,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
