import 'package:ecommerce/consts/consts.dart';
import 'package:ecommerce/widgets/applogo_widget.dart';
import 'package:ecommerce/widgets/bg_widget.dart';
import 'package:ecommerce/widgets/custom_textfield.dart';
import 'package:ecommerce/widgets/our_button.dart';
import 'package:get/get.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            (context.screenHeight * 0.1).heightBox,
            applogoWidget(),
            10.heightBox,
            "Join the to $appname ".text.white.fontFamily(bold).size(18).make(),
            15.heightBox,
            Column(
              children: [
                customTextField(name, nameHint),
                5.heightBox,
                customTextField(email, emailHint),
                5.heightBox,
                // Align(
                //     alignment: Alignment.bottomRight,
                //     child: TextButton(onPressed: () {}, child: orwithPhoneNumber.text.make())),
                5.heightBox,
                customTextField(password, passwordHint),
                5.heightBox,
                customTextField(retypePassword, retypePasswordHint),
                5.heightBox,
                Row(
                  children: [
                    Checkbox(
                      value: isChecked,
                      // checkColor: Colors.white,
                      fillColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
                        if (states.contains(MaterialState.disabled)) {
                          return redColor;
                        }
                        return redColor;
                      }),
                      onChanged: (value) {
                        setState(() {
                          isChecked = value;
                        });
                      },
                    ),
                    Expanded(
                      child: RichText(
                          text: const TextSpan(children: [
                        TextSpan(text: "I agree to the ", style: TextStyle(color: fontGrey, fontFamily: regular)),
                        TextSpan(text: termsAndCondition, style: TextStyle(color: redColor, fontFamily: semibold)),
                        TextSpan(text: " & ", style: TextStyle(color: fontGrey, fontFamily: regular)),
                        TextSpan(text: privacyPolicy, style: TextStyle(color: redColor, fontFamily: semibold)),
                      ])),
                    ),
                  ],
                ),
                5.heightBox,
                ourButton(
                        color: isChecked == true ? redColor : lightGrey,
                        title: signup,
                        textColor: whiteColor,
                        onPress: () {})
                    .box
                    .width(context.screenWidth)
                    .make(),
                20.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    alreadyHaveAccount.text.color(fontGrey).make(),
                    login.text.color(redColor).bold.make().onTap(() {
                      Get.back();
                    })
                  ],
                ),

                5.heightBox
              ],
            ).box.white.rounded.padding(const EdgeInsets.all(16)).width(context.screenWidth - 70).shadowSm.make(),
          ],
        ),
      ),
    ));
  }
}
