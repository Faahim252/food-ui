import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food/models/food_model.dart';
import 'package:food/pages/food_info.dart';
import 'package:food/profile/profilepage.dart';
import 'package:food/widgets/addbutton.dart';

class FoodDetailpage extends StatefulWidget {
  final FoodModel foodData;
  const FoodDetailpage({super.key, required this.foodData});

  @override
  _FoodDetailpageState createState() => _FoodDetailpageState();
}

class _FoodDetailpageState extends State<FoodDetailpage> {
  var qty = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(
                  height: 3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.arrow_back_ios,
                        size: 22,
                      ),
                    ),
                    const Icon(
                      Icons.favorite,
                      size: 28,
                      color: Colors.red,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Center(
                  child: SizedBox(
                    height: 220,
                    child: Image.asset(widget.foodData.image),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: Center(
                    child: Container(
                      width: 120.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(29.0),
                        color: Colors.amber[300],
                        boxShadow: [
                          BoxShadow(
                            color: Colors.amber[300]!,
                            blurRadius: 5.0,
                          )
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              if (qty > 1) {
                                setState(() {
                                  qty = qty - 1;
                                });
                              }
                            },
                            child: const Text(
                              "-",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 25),
                            ),
                          ),
                          Text(
                            qty.toString(),
                            style: const TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 20),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                qty = qty + 1;
                              });
                            },
                            child: const Text(
                              "+",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 22),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        widget.foodData.name,
                        style: const TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        const Text(
                          "\$",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Colors.amber),
                        ),
                        Text(
                          widget.foodData.price,
                          style: const TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w500),
                        ),
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const FoodInfo(
                          icon: "assets/images/star.png", value: "4.6"),
                      FoodInfo(
                          icon: "assets/images/cal.png",
                          value: "${widget.foodData.cal} Calories"),
                      const FoodInfo(
                          icon: "assets/images/time.png", value: "20-30 Min"),
                    ],
                  ),
                ),
                const Text(
                  "Details",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "This is spicy somaalia food, prepared with boqol soon, masala and another ingredients",
                  style: _grayText(),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "Ingredients",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(">  bariis", style: _grayText()),
                      Text(">  khudaar", style: _grayText()),
                      Text(">  Salt", style: _grayText()),
                      Text(">  saliid", style: _grayText()),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: InkWell(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const MyProfilePage()),
        ),
        child: AddButton(
          height: 60,
          width: 60,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  TextStyle _grayText() => TextStyle(color: Colors.grey[500], fontSize: 15);
}
