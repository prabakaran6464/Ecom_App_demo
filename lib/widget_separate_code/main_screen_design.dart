import 'package:flutter/material.dart';
import 'package:my_ecom_app/screens/category_screen.dart';
import 'package:my_ecom_app/widget_separate_code/app_bar_file.dart';
import 'package:my_ecom_app/widget_separate_code/products_list_file.dart';
import 'package:my_ecom_app/widget_separate_code/slider_file.dart';

import '../utils_screen/alignment.dart';

class Front_Screen_Ui extends StatefulWidget {
  const Front_Screen_Ui({Key? key}) : super(key: key);

  @override
  State<Front_Screen_Ui> createState() => _Front_Screen_UiState();
}

class _Front_Screen_UiState extends State<Front_Screen_Ui> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Appbar_File(),
        SizedBox(
          height: 10,
        ),
        Slider_File(),
        SizedBox(height: 20,),
        SingleChildScrollView(scrollDirection: Axis.horizontal,
          child: Product_Category(),
        ),
        SizedBox(height: 20,),
      Product_list(),
      ],
    );
  }
}
