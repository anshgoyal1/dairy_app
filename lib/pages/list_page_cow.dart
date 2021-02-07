import 'package:dairy_app/widgets/cow_detail_container.dart';
import 'package:flutter/material.dart';

import '../lists/cow_data.dart';
import '../lists/cow_list.dart';

class ListPageCow extends StatelessWidget {
  final Data data;

  ListPageCow({@required this.data});
  @override
  Widget build(BuildContext context) {
    if(data != null){
      show.add(CowDetailsContainer(data: data));
    }
    return Scaffold(
      body: ListView(
        children: show,
      ),
    );
  }
}
