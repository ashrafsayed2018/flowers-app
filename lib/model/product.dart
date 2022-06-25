class Product {
  int? id;
  String name;
  String price;
  String image;
  String? location;

  Product({
    this.id,
    required this.name,
    required this.price,
    required this.image,
    this.location = 'الكويت',
  });
}

List<Product> products = [
  Product(
      id: 1,
      name: "منتج 1",
      price: "100",
      image: "https://source.unsplash.com/random/200x200?sig=",
      location: 'السعودية'),
  Product(
      id: 2,
      name: "منتج 2",
      price: "200",
      image: "https://source.unsplash.com/random/200x200?sig="),
  Product(
      id: 3,
      name: "منتج 3",
      price: "300",
      image: "https://source.unsplash.com/random/200x200?sig="),
  Product(
      id: 4,
      name: "منتج 4",
      price: "400",
      image: "https://source.unsplash.com/random/200x200?sig="),
  Product(
      id: 5,
      name: "منتج 5",
      price: "500",
      image: "https://source.unsplash.com/random/200x200?sig="),
  Product(
      id: 6,
      name: "منتج 6",
      price: "600",
      image: "https://source.unsplash.com/random/200x200?sig="),
  Product(
      id: 7,
      name: "منتج 7",
      price: "700",
      image: "https://source.unsplash.com/random/200x200?sig="),
  Product(
      id: 8,
      name: "منتج 8",
      price: "800",
      image: "https://source.unsplash.com/random/200x200?sig="),
  Product(
      id: 9,
      name: "منتج 9",
      price: "900",
      image: "https://source.unsplash.com/random/200x200?sig="),
  Product(
      id: 10,
      name: "منتج 10",
      price: "1000",
      image: "https://source.unsplash.com/random/200x200?sig="),
];
