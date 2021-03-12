import 'package:dairy_app/pages/list_page_buffalo.dart';
import 'package:dairy_app/widgets/button.dart';
import 'package:dairy_app/widgets/labels_box.dart';
import 'package:dairy_app/pages/list_page_cow.dart';
import 'package:flutter/material.dart';

import '../lists/buffalo_list.dart';
import '../lists/buffalo_data.dart';

// ignore: must_be_immutable
class BuffaloDetails extends StatelessWidget {
  TextEditingController idController = new TextEditingController();
  TextEditingController birthdateController = new TextEditingController();
  TextEditingController morningmilkController = new TextEditingController();
  TextEditingController eveningmilkController = new TextEditingController();
  TextEditingController foodController = new TextEditingController();
  TextEditingController seedingdateController = new TextEditingController();
  TextEditingController charaController = new TextEditingController();
  TextEditingController milkingController = new TextEditingController();
  TextEditingController medicineController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 15.0,
          ),
          Center(
            child: Image.asset(
              'assets/buffalo.png',
              width: 60.0,
              height: 60.0,
            ),
          ),
          LabelsBox(
            textEditingController: idController,
            hint: 'id',
          ),
          LabelsBox(
            textEditingController: birthdateController,
            hint: 'birth date',
          ),
          LabelsBox(
            textEditingController: morningmilkController,
            hint: 'morning milk',
          ),
          LabelsBox(
            textEditingController: eveningmilkController,
            hint: 'evening milk',
          ),
          LabelsBox(
            textEditingController: foodController,
            hint: 'food',
          ),
          LabelsBox(
            textEditingController: seedingdateController,
            hint: 'Seeding date',
          ),
          LabelsBox(
            textEditingController: charaController,
            hint: 'Chara',
          ),
          LabelsBox(
            textEditingController: milkingController,
            hint: 'Milking',
          ),
          LabelsBox(
            textEditingController: medicineController,
            hint: 'Medicine',
          ),
          Buttons(
            label: 'Add',
            color: Colors.blue[600],
            onPress: () {
              final dataTo = BuffaloData(
                  id: idController.text,
                  birthDate: birthdateController.text,
                  morningMilk: morningmilkController.text,
                  eveningMilk: eveningmilkController.text,
                  food: foodController.text,
                  seedingDate: seedingdateController.text,
                  chara: charaController.text,
                  milking: milkingController.text,
                  medicine: medicineController.text);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ListPageBuffalo(
                            data: dataTo,
                          )));
            },
          )
        ],
      ),
    );
  }
}
