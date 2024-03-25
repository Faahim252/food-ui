import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food/profile/payment.dart';
import 'package:food/profile/user_details.dart';

class MyProfilePage extends StatelessWidget {
  const MyProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: Scaffold(
        body: Column(
          children: [
            userDetails(),
            SizedBox(height: 5,),
            Expanded(child: TabBarView(children: [
              Center(child: Text("Acount details")),
              payments(),
              Text("History details")
            ]))
          ],
        ),
      ),
    );
  }
}
