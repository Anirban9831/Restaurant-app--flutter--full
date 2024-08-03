import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp/component/my_button.dart';
import 'package:myapp/models/food.dart';
import 'package:myapp/models/restaurant.dart';
import 'package:provider/provider.dart';

class FoodPage extends StatefulWidget {
  final Food food;
  final Map<Addon, bool> selectedAdddons = {};

  FoodPage({
    super.key,
    required this.food,
  }) {
    //initialize selected addon to be false at first
    for (Addon addon in food.availableAddons) {
      selectedAdddons[addon] = false;
    }
  }

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {

  //method to add cart
  void addToCart(Food food,Map<Addon,bool> selectedAdddons){
    //close the food page
    Navigator.pop(context);

    //format the selecetedv addon
    List<Addon> currentlySelectedAddons=[];
    for(Addon addon in widget.food.availableAddons){
      if(widget.selectedAdddons[addon] == true){
        currentlySelectedAddons.add(addon);
      }
    }

    // add to cart
    context.read<Restaurant>().addtoCart(food, currentlySelectedAddons);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      //Contents
      children: [
        Scaffold(
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //food image
                
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Image.asset(widget.food.imagePath),
                ),

                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //food name
                      Text(
                        widget.food.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),

                      const SizedBox(
                        height: 10,
                      ),

                      //food price
                      Text(
                        '\u{20B9} ${widget.food.price.toString()}',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                          fontSize: 15,
                        ),
                      ),

                      //food description
                      Text(
                        widget.food.description,
                      ),

                      const SizedBox(
                        height: 10,
                      ),

                      Divider(
                        color: Theme.of(context).colorScheme.secondary,
                      ),

                      const SizedBox(
                        height: 10,
                      ),

                      //addons
                      Text(
                        "ADD-Ons",
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.inversePrimary,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),

                      const SizedBox(
                        height: 10,
                      ),

                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Theme.of(context).colorScheme.secondary),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          padding: EdgeInsets.zero,
                          itemCount: widget.food.availableAddons.length,
                          itemBuilder: (context, index) {
                            //get indivdual adon
                            Addon addon = widget.food.availableAddons[index];
                            return CheckboxListTile(
                              title: Text(addon.name),
                              subtitle: Text(
                                '\u{20B9}${addon.price}',
                              ),
                              value: widget.selectedAdddons[addon],
                              //value: true,
                              onChanged: (bool? value) {
                                setState(() {
                                  widget.selectedAdddons[addon] = value!;
                                });
                              },
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),

                //buttons to add to cart
                MyButton(
                  text: "Add to cart",
                  onTap: () => addToCart(widget.food,widget.selectedAdddons),
                ),

                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),

        //back button
        SafeArea(
            child: Opacity(
          opacity: .8,
          child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: const Icon(Icons.arrow_back_rounded),
              onPressed: () => Navigator.pop(context),
            ),
          ),
        ))
      ],
    );
  }
}
