
import 'package:dairy_app/lists/buffalo_data.dart';
import 'package:dairy_app/widgets/text_weight.dart';
import 'package:flutter/material.dart';


class BuffaloDetailsContainer extends StatelessWidget {
  final BuffaloData data;

  BuffaloDetailsContainer({this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      width: 400.0,
      child: Card(
        color: Colors.blue[300],
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        elevation: 10.0,
        child: Column(
          children: [
            SizedBox(
              height: 5.0,
            ),
            TextWeight(
              text: data.id,
              label: "id",
            ),
            TextWeight(
              text: data.birthDate,
              label: "Birth date",
            ),
            TextWeight(
              text: data.morningMilk,
              label: "Morning Milk",
            ),
            TextWeight(
              text: data.eveningMilk,
              label: "Evening Milk",
            ),
            TextWeight(
              text: data.food,
              label: "Food",
            ),
            TextWeight(
              text: data.seedingDate,
              label: "Seeding Date",
            ),
            TextWeight(
              text: data.chara,
              label: "Chara",
            ),
            TextWeight(
              text: data.milking,
              label: "Milking",
            ),
            SizedBox(
              height: 5.0,
            ),
          ],
        ),
      ),
    );
  }
}