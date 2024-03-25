import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:food/models/food_model.dart';
import 'package:food/pages/filter.dart';
import 'package:food/pages/food_card.dart';
import 'package:food/pages/food_detail_page.dart';

class Foodlistpage extends StatefulWidget {
  const Foodlistpage({super.key});

  @override
  State<Foodlistpage> createState() => _FoodlistpageState();
}

class _FoodlistpageState extends State<Foodlistpage> {
  List<FoodModel> foods = [
    FoodModel(
        name: "bajiyo",
        description: "bijiyo bisbaas leh",
        cal: "65",
        price: "30.00",
        image: "assets/images/idli.jpeg"),
    FoodModel(
        name: "Bariis",
        description: "maraq ukun leh ",
        cal: "75",
        price: "50.00",
        image: "assets/images/idiyapam.jpeg"),
    FoodModel(
      name: "soor",
      description: "maraq leh",
      cal: "85",
      price: "40.00",
      image: "assets/images/pongal.png",
    ),
    FoodModel(
      name: "sanbuus",
      description: "wato labo nooc bisbaas ah",
      cal: "65",
      price: "60.00",
      image: "assets/images/dosa.png",
    ),
    FoodModel(
      name: "Cunto dhameytiran",
      description: "oo shan saxan ka kooban",
      cal: "128",
      price: "110.00",
      image: "assets/images/meals.png",
    ),
    FoodModel(
      name: "Paniyaram",
      description: "wato bisbaas ",
      cal: "43",
      price: "35.00",
      image: "assets/images/paniyaram.png",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Somaali Food",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              const Filter(),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: StaggeredGrid.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                  children: [
                    const Center(
                      child: Text(
                        "heshay 80 nooc",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                    for (var i = 0; i < foods.length; i++)
                      InkWell(
                          onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FoodDetailpage(
                                          foodData: foods[i],
                                        )),
                              ),
                          child: FoodCard(foodData: foods[i]))
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
