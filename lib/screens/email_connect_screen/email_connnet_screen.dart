import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vibgyor/screens/email_verification_screen/email_verification_screen.dart';

import '../../consts/ColorConstant.dart';
import '../../consts/constants.dart';
import '../../consts/customcontainer.dart';
import '../../consts/text_Style.dart';

class EmailEnterScreen extends StatelessWidget {
  const EmailEnterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(image: bgImage,fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                child: Row(children: [
                  IconButton(onPressed: () {

                  }, icon: const Icon(Icons.arrow_back,size: 30,)),
                ],),
              ),
              const Text('Your email?',style: TextingStyle.font32,),
              const SizedBox(
                height: 15,
              ),
              const Text("Don't lose access to your account,\n verify your email" ),
              const SizedBox(
                height: 10,
              ),
              CustomContainer(width: 0.82,height: 0.13,
              ),
              const SizedBox(
                height: 25,
              ),

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
            label: const Text('Next',style: TextingStyle.font22 ,),
            onPressed: () {
            Get.to(const EmailVerificationOtpSCreren());
            },
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
