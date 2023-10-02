import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vibgyor/consts/constants.dart';
import 'package:vibgyor/consts/customcontainer.dart';
import 'package:vibgyor/consts/text_Style.dart';
import 'package:vibgyor/screens/email_connect_screen/email_connnet_screen.dart';

import '../../consts/ColorConstant.dart';

class OtpVerificationScreen extends StatelessWidget {
  const OtpVerificationScreen({super.key});

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
              const Text('9997865432'),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomContainer(width: 0.13,height: 0.17,),
                  CustomContainer(width: 0.13,height: 0.17,),
                  CustomContainer(width: 0.13,height: 0.17,),
                  CustomContainer(width: 0.13,height: 0.17,),
                  CustomContainer(width: 0.13,height: 0.17,),
                  CustomContainer(width: 0.13,height: 0.17,),
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
              Get.to(EmailEnterScreen());
            },
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
