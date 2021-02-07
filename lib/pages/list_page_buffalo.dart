import 'package:dairy_app/lists/buffalo_data.dart';
import 'package:dairy_app/lists/buffalo_list.dart';
import 'package:dairy_app/widgets/buffalo_details_container.dart';
import 'package:flutter/material.dart';


class ListPageBuffalo extends StatelessWidget {
  final BuffaloData data;

  ListPageBuffalo({@required this.data});
  @override
  Widget build(BuildContext context) {
    if(data != null){
      buffaloList.add(BuffaloDetailsContainer(data: data));
    }
    return Scaffold(
      body: ListView(
        children: buffaloList,
      ),
    );
  }
}