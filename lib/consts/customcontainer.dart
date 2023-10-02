
import 'package:flutter/material.dart';

import 'ColorConstant.dart';

class CustomContainer extends StatelessWidget {
  CustomContainer({
    this.textEditingController,
    this.textFormField,
    this.height,
    this.width,
    super.key,
  });

  double? width;
  double? height;
  TextEditingController? textEditingController;
  TextFormField? textFormField;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width*height! ,
      width: MediaQuery.of(context).size.width*width!,
      decoration: BoxDecoration(
        color: ColorConstant.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.6),
            blurRadius: 4,
            offset: const Offset(0, -4), // Top shadow
          ),
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 4,
            offset: const Offset(4, 0), // Right shadow
          ),
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 4,
            offset: const Offset(0, 4), // Bottom shadow
          ),
          BoxShadow(
            color: Colors.grey.withOpacity(0.4),
            blurRadius: 8,
            offset: const Offset(-4, 0), // Left shadow
          ),
        ],
      ),
      child: const Padding(
        padding: EdgeInsets.only(left: 8,right: 8),
      ),
    );
  }
}