import 'package:flutter/material.dart';
import 'package:whatsapp_series/Widgets/uihelper.dart';

class OTPScreen extends StatelessWidget {
  String phonenumber;
  OTPScreen({required this.phonenumber});
  TextEditingController otp1Controller = TextEditingController();
  TextEditingController otp2Controller = TextEditingController();
  TextEditingController otp3Controller = TextEditingController();
  TextEditingController otp4Controller = TextEditingController();
  TextEditingController otp5Controller = TextEditingController();
  TextEditingController otp6Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            UiHelper.CustomText(
                text: "Verifying your number",
                height: 20,
                color: Color(0XFF00A884),
                fontweight: FontWeight.bold),
            SizedBox(
              height: 30,
            ),
            UiHelper.CustomText(
                text: "You've tried to register +91${phonenumber}", height: 15),
            UiHelper.CustomText(
                text: "recently. Wait before requesting an sms or a call",
                height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomText(text: "with your code. ", height: 15),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: UiHelper.CustomText(
                      text: "Wrong number?",
                      height: 15,
                      color: Color(0XFF00A884)),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomContainer(otp1Controller),
                SizedBox(
                  width: 10,
                ),
                UiHelper.CustomContainer(otp2Controller),
                SizedBox(
                  width: 10,
                ),
                UiHelper.CustomContainer(otp3Controller),
                SizedBox(
                  width: 10,
                ),
                UiHelper.CustomContainer(otp4Controller),
                SizedBox(
                  width: 10,
                ),
                UiHelper.CustomContainer(otp5Controller),
                SizedBox(
                  width: 10,
                ),
                UiHelper.CustomContainer(otp6Controller)
              ],
            ),
            SizedBox(
              height: 30,
            ),
            UiHelper.CustomText(
                text: "Didn’t receive code?",
                height: 14,
                color: Color(0XFF00A884))
          ],
        ),
      ),
      floatingActionButton:
          UiHelper.CustomButton(callback: () {}, buttonname: "Next"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
