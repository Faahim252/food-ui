import 'package:flutter/material.dart';
import 'package:food/profile/card_tile.dart';
import 'package:food/widgets/addbutton.dart';

class payments extends StatelessWidget {
  const payments({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "My Card",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 180.0,
                  width: 300.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/debit_card.jpg"),
                      fit: BoxFit.fill,
                    ),
                    shape: BoxShape.rectangle,
                  ),
                ),
                AddButton(),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              "Add new Card",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            CardTile(
              img: "assets/images/google.png",
              type: "Google pay",
              icon: Icon(
                Icons.radio_button_checked,
                color: Colors.amber[400],
              ),
            ),
            CardTile(
              img: "assets/images/mc.png",
              type: "Credit Card",
              icon: Icon(
                Icons.radio_button_unchecked,
                color: Colors.grey,
              ),
            ),
            CardTile(
              img: "assets/images/apple.png",
              type: "Apple pay",
              icon: Icon(
                Icons.radio_button_unchecked,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ElevatedButton(
          onPressed: () {},
          child: Text(
            "Add New",
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
          style: ElevatedButton.styleFrom(
            minimumSize: Size(
              MediaQuery.of(context).size.width,
              50,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
