import 'package:flowwer_app/constants/colors.dart';
import 'package:flowwer_app/provider/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({Key? key}) : super(key: key);
  @override
  final Size preferredSize = const Size.fromHeight(60);
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(0),
      child: AppBar(
        backgroundColor: appBarGreen,
        actions: [
          Row(
            children: [
              Consumer<Cart>(
                builder: ((context, cart, child) {
                  return Text(
                    "\$ ${cart.totalPrice}",
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  );
                }),
              ),
              const SizedBox(
                width: 10,
              ),
              Stack(
                children: [
                  Positioned(
                    width: 20,
                    top: -2,
                    left: -2,
                    child: Container(
                      alignment: Alignment.center,
                      width: 20,
                      height: 20,
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Consumer<Cart>(
                        builder: ((context, cart, child) {
                          return Text(
                            cart.selectedProducts.length.toString(),
                            style: const TextStyle(fontSize: 12),
                          );
                        }),
                      ),
                    ),
                  ),
                  IconButton(
                    padding: const EdgeInsets.all(0),
                    onPressed: () {},
                    icon: const Icon(Icons.shopping_cart),
                  )
                ],
              ),
            ],
          )
        ],
        // title: const Text("home"),
      ),
    );
  }
}
