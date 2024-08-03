import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp/component/my_button.dart';
import 'package:myapp/component/my_cart_tile.dart';
import 'package:myapp/models/restaurant.dart';
import 'package:myapp/pages/payment_page.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) {
        //cart
        final userCart = restaurant.cart;

        //Scaffold UI
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text("Cart"),
            backgroundColor: Colors.transparent,
            foregroundColor: Theme.of(context).colorScheme.inversePrimary,
            actions: [
              //clear button
              IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text(
                          "Are you sure you want to clear the cart? "),
                      actions: [
                        //cancel button
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text("Cancel"),
                        ),
                        //yes button
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                            restaurant.clearCart();
                          },
                          child: const Text("Yes"),
                        ),
                      ],
                    ),
                  );
                },
                icon: const Icon(Icons.delete),
              )
            ],
          ),
          //backgroundColor: Theme.of(context).colorScheme.secondary,
          body: Column(
            //list of cart
            children: [
              Expanded(
                child: Column(
                  children: [
                    if (userCart.isEmpty)
                      const Expanded(
                        child: Center(
                          child: Text(
                            "Your Cart is Empty.... :)",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      )
                    else
                      Expanded(
                        child: ListView.builder(
                          itemCount: userCart.length,
                          itemBuilder: (context, index) {
                            //get individual cart item
                            final cartItem = userCart[index];
                        
                            //return cart tile UI
                            return MyCartTile(cartItem: cartItem);
                          },
                        ),
                        //button to pay
                      ),
                  ],
                ),
              ),

              //button to pay
              if (userCart.isNotEmpty)
                MyButton(
                  text: "Go to Checkout",
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PaymentPage(),
                    ),
                  ),
                ),

              const SizedBox(height: 25),
            ],
          ),
        );
      },
    );
  }
}
