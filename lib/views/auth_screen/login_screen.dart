import 'package:ecommerce/consts/consts.dart';
import 'package:ecommerce/consts/lists.dart';
import 'package:ecommerce/views/auth_screen/signup_screen.dart';
import 'package:ecommerce/views/home/home.dart';
import 'package:ecommerce/widgets/applogo_widget.dart';
import 'package:ecommerce/widgets/bg_widget.dart';
import 'package:ecommerce/widgets/custom_textfield.dart';
import 'package:ecommerce/widgets/our_button.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //textcontroller
    TextEditingController nameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    return bgWidget(Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            (context.screenHeight * 0.1).heightBox,
            applogoWidget(),
            10.heightBox,
            "Log in to $appname ".text.white.fontFamily(bold).size(18).make(),
            15.heightBox,
            Column(
              children: [
                customTextField(email, emailHint, nameController),
                5.heightBox,
                customTextField(password, passwordHint, emailController),
                Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(onPressed: () {}, child: forgetPass.text.make())),
                5.heightBox,
                ourButton(
                    color: redColor,
                    title: login,
                    textColor: whiteColor,
                    onPress: () {
                      Get.to(() => const Home());
                    }).box.width(context.screenWidth).make(),
                5.heightBox,
                createNewAccount.text.color(fontGrey).make(),
                5.heightBox,
                ourButton(
                    color: lightGolden,
                    title: signup,
                    textColor: redColor,
                    onPress: () {
                      Get.to(() => const SignupScreen());
                    }).box.width(context.screenWidth).make(),
                10.heightBox,
                loginWithn.text.color(fontGrey).make(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    3,
                    (index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundColor: lightGrey,
                        child: Image.asset(
                          socialIconList[index],
                          width: 30,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ).box.white.rounded.padding(const EdgeInsets.all(16)).width(context.screenWidth - 70).shadowSm.make(),
          ],
        ),
      ),
    ));
  }
}
