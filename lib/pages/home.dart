import 'package:flowwer_app/constants/colors.dart';
import 'package:flowwer_app/model/product.dart';
import 'package:flowwer_app/pages/details.dart';
import 'package:flowwer_app/pages/login.dart';
import 'package:flowwer_app/widgets/myappbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flowwer_app/provider/cart.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        "https://static.vecteezy.com/packs/media/components/global/search-explore-nav/img/vectors/term-bg-4-5af9c270adb750fdeb8f6a17fc9bfe54.jpg",
                      ),
                    ),
                  ),
                  accountName: Text(
                    "ashraf sayed",
                    style: TextStyle(color: Colors.black),
                  ),
                  accountEmail: Text(
                    "ashraf@gmail.com",
                    style: TextStyle(color: Colors.black),
                  ),
                  currentAccountPicture: CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-yGniKBDScl2Eh_F8aLOZRLBuyrGeZnQgOA&usqp=CAU",
                    ),
                  ),
                ),
                const ListTile(
                  title: Text("المنتجات"),
                  leading: Icon(Icons.home),
                ),
                ListTile(
                  title: InkWell(
                      child: const Text("المنتجات المفضلة"), onTap: () {}),
                  leading: const Icon(Icons.favorite_outline),
                ),
                const ListTile(
                  title: Text("الشراء"),
                  leading: Icon(Icons.shopping_cart),
                ),
                ListTile(
                  title: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Login()));
                      },
                      child: const Text("دخول")),
                  leading: const Icon(Icons.login),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Text(
                "قام بتطويره اشرف سيد ",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 4 / 5,
            crossAxisSpacing: 15,
            mainAxisSpacing: 30,
          ),
          itemCount: products.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Details(
                    product: products[index],
                  );
                }));
              },
              child: GridTile(
                footer: GridTileBar(
                  title: Text(products[index].name),
                  backgroundColor: appBarGreen,
                  leading: Consumer<Cart>(builder: (context, cart, child) {
                    return IconButton(
                      icon: Icon(
                        cart.selectedProducts.contains(products[index])
                            ? Icons.favorite
                            : Icons.add,
                        color: cart.selectedProducts.contains(products[index])
                            ? Colors.red
                            : Colors.white,
                        size: 18,
                      ),
                      onPressed: () {
                        cart.selectedProducts.contains(products[index])
                            ? cart.removeFromSelected(products[index])
                            : cart.addToSelected(products[index]);
                      },
                    );
                  }),
                  trailing: Text(
                    "\$ ${products[index].price}",
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: -3,
                      bottom: -3,
                      right: 0,
                      left: 0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                          products[index].image + index.toString(),
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
