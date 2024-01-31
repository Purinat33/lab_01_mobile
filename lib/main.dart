// RUn with flutter run -d chrome --web-renderer html
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Product layout demo home page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Product Listing")),
        body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
          children: const <Widget>[
            ProductBox(
                name: "Minecraft",
                description: "Mine, Build, and Survive in the world of Blocks",
                price: 1000,
                image: "minecraft.png"),
            ProductBox(
                name: "Elden Ring",
                description: "Rise, Tarnished",
                price: 2800,
                image: "eldenring.jpeg"),
            ProductBox(
                name: "GTA V",
                description: "Welcome to San Andreas",
                price: 250,
                image: "gtav.jpeg"),
            ProductBoxURL(
                name: "Overwatch",
                description: "A dead game... revived",
                price: 1500,
                image:
                    "https://cdn.cloudflare.steamstatic.com/steam/apps/2357570/ss_9f00f1ee2c60dda39f4813aa6b252cf9331ecb97.600x338.jpg?t=1703179793"),
            ProductBoxURL(
                name: "Destiny",
                description: "Eyes Up, Guardian!",
                price: 100,
                image:
                    "https://fanatical.imgix.net/product/original/26abfd86-a2b8-4add-8057-93b9f8263476.jpeg?auto=compress,format&w=1408&fit=crop&h=792"),
            ProductBoxURL(
                name: "Flight Simulator 2024",
                description: "Fly High Buckaroo!",
                price: 1900,
                image:
                    "https://store-images.s-microsoft.com/image/apps.31431.14225646405929875.ed2b05a2-f9fd-4a33-b808-807366c017bf.dd5e8c3a-2ed1-4a2d-8b96-a6126795d7cb?q=90&w=480&h=270"),
          ],
        ));
  }
}

class ProductBox extends StatelessWidget {
  const ProductBox(
      {Key? key,
      required this.name,
      required this.description,
      required this.price,
      required this.image})
      : super(key: key);
  final String name;
  final String description;
  final int price;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(2),
        height: 120,
        child: Card(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
              Image.asset("/$image"),
              Expanded(
                  child: Container(
                      padding: const EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(name,
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold)),
                          Text(description),
                          Text("Price: $price"),
                        ],
                      )))
            ])));
  }
}

class ProductBoxURL extends StatelessWidget {
  const ProductBoxURL(
      {Key? key,
      required this.name,
      required this.description,
      required this.price,
      required this.image})
      : super(key: key);
  final String name;
  final String description;
  final int price;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(2),
        height: 120,
        child: Card(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
              Image.network(image),
              Expanded(
                  child: Container(
                      padding: const EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(name,
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold)),
                          Text(description),
                          Text("Price: $price"),
                        ],
                      )))
            ])));
  }
}
