import 'package:ecommerce/consts/consts.dart';
import 'package:ecommerce/views/home/home.dart';
import 'package:ecommerce/widgets/applogo_widget.dart';
import 'package:ecommerce/widgets/bg_widget.dart';
import 'package:ecommerce/widgets/custom_textfield.dart';
import 'package:ecommerce/widgets/our_button.dart';
import 'package:get/get.dart';

import '../controller/auth_controller.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool? isChecked = false;
  var controller = Get.put(AuthController());
  //textcontroller
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordRetypeController = TextEditingController();

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
            "Join the $appname ".text.white.fontFamily(bold).size(18).make(),
            15.heightBox,
            Column(
              children: [
                customTextField(name, nameHint, nameController),
                5.heightBox,
                customTextField(email, emailHint, emailController),
                5.heightBox,
                5.heightBox,
                customTextField(password, passwordHint, passwordController, isPass: true),
                5.heightBox,
                customTextField(retypePassword, retypePasswordHint, passwordRetypeController, isPass: true),
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
                    onPress: () async {
                      if (isChecked == true) {
                        try {
                          await controller
                              .signupMethod(
                                  context: context, email: emailController.text, password: passwordController.text)
                              .then((value) {
                            return controller.storeUserData(
                                name: nameController.text,
                                email: emailController.text,
                                password: passwordController.text);
                          }).then((value) {
                            VxToast.show(context, msg: loggedin);
                            Get.offAll(() => const Home());
                          });
                        } catch (e) {
                          // auth.signOut();
                          VxToast.show(context, msg: e.toString());
                        }
                      }
                    }).box.width(context.screenWidth).make(),
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
