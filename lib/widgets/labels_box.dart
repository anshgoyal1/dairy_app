import 'package:flutter/material.dart';

class LabelsBox extends StatelessWidget {
  String hint;
  TextEditingController textEditingController;
  LabelsBox({this.hint, this.textEditingController});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextFormField(
        validator: (value) {
          if (value.isEmpty) {
            return 'Please enter some text';
          }
          return null;
        },
        autocorrect: true,
        controller: textEditingController,
        decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: hint,
            alignLabelWithHint: true,
            labelStyle: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
