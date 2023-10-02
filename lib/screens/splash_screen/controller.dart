import 'package:get/get.dart';
import 'package:vibgyor/screens/get_phone_number_screen/get_phone_number_screen.dart';

class SplashScreenController extends GetxController{


  splash()async{
Future.delayed(const Duration(seconds: 2),()async{
  Get.to(const GetPhoneNumberScreen());
});

  }

  @override
  void onInit() {
 splash();
    super.onInit();
  }
}