import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vibgyor/consts/custom_text_formfield.dart';

import '../../consts/ColorConstant.dart';
import '../../consts/constants.dart';
import '../../consts/customcontainer.dart';
import '../../consts/text_Style.dart';

class EmailVerificationOtpSCreren extends StatelessWidget {
  const EmailVerificationOtpSCreren({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(image: bgImage, fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 100,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_back,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Enter your code',
                style: TextingStyle.font32,
              ),
              const Text('sample123@gmail.com'),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomContainer(width: 0.13,height: 0.17,textFormField: Formfields.CustomTextFormField,),
                  CustomContainer(width: 0.13,height: 0.17,textFormField: Formfields.CustomTextFormField,),
                  CustomContainer(width: 0.13,height: 0.17,textFormField: Formfields.CustomTextFormField,),
                  CustomContainer(width: 0.13,height: 0.17,textFormField: Formfields.CustomTextFormField,),
                  CustomContainer(width: 0.13,height: 0.17,textFormField: Formfields.CustomTextFormField,),
                  CustomContainer(width: 0.13,height: 0.17,textFormField: Formfields.CustomTextFormField,),
                ],
              )
            ],
          ),
        ),
        floatingActionButton: Container(
          width: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
          ),
          child: FloatingActionButton.extended(
            backgroundColor: ColorConstant.white,
            label: const Text(
              'Next',
              style: TextingStyle.font22,
            ),
            onPressed: () {

            },
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
