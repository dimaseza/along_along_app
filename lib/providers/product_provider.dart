part of 'providers.dart';

class ProductProvider with ChangeNotifier {
  List<Product> _productItems = [
    Product(
      id: "p1",
      title: "Jeruk Medan Super",
      subTitle: "1000 1g / 1000g",
      price: 24000,
      image: AssetImage("assets/images/jeruk_medan.jpg"),
    ),
    Product(
      id: "p2",
      title: "Mangga Harumanis",
      subTitle: "1000 gram / 1000g",
      price: 39000,
      image: AssetImage("assets/images/mangga_harumanis.jpg"),
    ),
    Product(
      id: "p3",
      title: "Kentang Super",
      subTitle: "1000 1g / 1000g",
      price: 13200,
      image: AssetImage("assets/images/kentang_super.jpg"),
    ),
    Product(
      id: "p4",
      title: "Jamur Etira",
      subTitle: "1 pack",
      price: 15000,
      image: AssetImage("assets/images/jamur_etira.jpg"),
    ),
  ];

  List<Product> get productItems {
    return [..._productItems];
  }
}
