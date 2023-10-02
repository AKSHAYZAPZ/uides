import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vibgyor/consts/ColorConstant.dart';
import 'package:vibgyor/consts/constants.dart';
import 'package:vibgyor/consts/custom_text_formfield.dart';
import 'package:vibgyor/consts/text_Style.dart';
import 'package:vibgyor/screens/otp_verification_screen/otp_verification_screen.dart';
import '../../consts/customcontainer.dart';

class GetPhoneNumberScreen extends StatelessWidget {
  const GetPhoneNumberScreen({Key? key}) : super(key: key);



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
              const Text('Can we get\n your number?',style: TextingStyle.font32,),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  CustomContainer(width: 0.2,height: 0.13,),
                  const SizedBox(width: 15,),
                  CustomContainer(width: 0.62,height: 0.13,
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              const Text("We'll text you a code to verify you're really you. Message and data rates may apply. What happens if your number changes?" )
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
          Get.to(OtpVerificationScreen());
          },
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
