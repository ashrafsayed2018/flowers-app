import 'package:flowwer_app/constants/colors.dart';
import 'package:flowwer_app/model/product.dart';
import 'package:flowwer_app/pages/details.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarGreen,
        actions: [
          Row(
            children: [
              const Text(
                "\$ 0",
                style: TextStyle(
                  fontSize: 16,
                ),
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
                      child: const Text(
                        "89",
                        style: TextStyle(fontSize: 12),
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
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: const [
                UserAccountsDrawerHeader(
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
                ListTile(
                  title: Text("home"),
                  leading: Icon(Icons.home),
                ),
                ListTile(
                  title: Text("my products"),
                  leading: Icon(Icons.production_quantity_limits),
                ),
                ListTile(
                  title: Text("about"),
                  leading: Icon(Icons.person),
                ),
                ListTile(
                  title: Text("logout"),
                  leading: Icon(Icons.logout),
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
                  leading:
                      IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
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
