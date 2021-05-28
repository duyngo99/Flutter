import 'package:flutter/material.dart';
import 'package:ngoanduy_flutter/homepage/components/homeheader.dart';

import 'categoryform.dart';

class Body extends StatelessWidget {
  int cateId;

  Body({this.cateId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: HomeHeader(),
      ),
      body: CategoryForm(id : this.cateId),
    );
  }
}
