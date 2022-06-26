import 'package:flowwer_app/widgets/myappbar.dart';
import 'package:flutter/material.dart';

import '../model/product.dart';

class Details extends StatefulWidget {
  final Product product;
  const Details({Key? key, required this.product}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  bool isShowMore = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              widget.product.image + (widget.product.id! - 1).toString(),
              fit: BoxFit.cover,
              width: double.infinity,
              height: 300,
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                "\$السعر  ${widget.product.price}",
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        widget.product.location!,
                        style: const TextStyle(
                          color: Color.fromARGB(255, 5, 5, 5),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Icon(
                        Icons.edit_location,
                        color: Color.fromARGB(255, 23, 2, 80),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Icon(Icons.star,
                          color: Color.fromARGB(255, 223, 205, 39)),
                      Icon(Icons.star,
                          color: Color.fromARGB(255, 223, 205, 39)),
                      Icon(Icons.star,
                          color: Color.fromARGB(255, 223, 205, 39)),
                      Icon(Icons.star,
                          color: Color.fromARGB(255, 223, 205, 39)),
                      Icon(Icons.star,
                          color: Color.fromARGB(255, 223, 205, 39)),
                    ],
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 250, 166, 160),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Text(
                      "جديد",
                      style: TextStyle(
                          color: Color.fromARGB(255, 15, 12, 12), fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(right: 10, left: 10, top: 20),
              child: const Text(
                "التفاصيل",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.right,
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(
                  right: 10, left: 10, top: 20, bottom: 20),
              child: Text(
                " البنفسج جنس نباتي ينتج أزهاراً بنفسجية أو بيضاء اللون. ويوجد منها من 400 إلى 500 نوع مختلف حول العالم توجد معظم أنواعها في نصف الكرة الأرضية الشمالي، وتنتشر بشكل خاص في هاواي، أستراليا وفي الأنديز في أمريكا الجنوبية. والبنفسج نبات عشبي معمر لا يعرف موطنه الحقيقي ولكنه نشأ في أوروبا وآسيا وأفريقيا البنفسج جنس نباتي ينتج أزهاراً بنفسجية أو بيضاء اللون. ويوجد منها من 400 إلى 500 نوع مختلف حول العالم توجد معظم أنواعها في نصف الكرة الأرضية الشمالي، وتنتشر بشكل خاص في هاواي، أستراليا وفي الأنديز في أمريكا الجنوبية. والبنفسج نبات عشبي معمر لا يعرف موطنه الحقيقي ولكنه نشأ في أوروبا وآسيا وأفريقيا",
                textAlign: TextAlign.right,
                maxLines: isShowMore ? 4 : null,
                overflow: TextOverflow.fade,
                style: const TextStyle(color: Colors.black),
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  isShowMore = !isShowMore;
                });
              },
              child: Text(
                !isShowMore ? "عرض اقل " : "عرض المزيد",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
