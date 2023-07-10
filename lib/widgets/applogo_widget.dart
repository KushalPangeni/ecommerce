import 'package:ecommerce/consts/consts.dart';

Widget applogoWidget() {
  return Container(
    child: Image.asset(icAppLogo).box.white.rounded.size(77, 77).padding(const EdgeInsets.all(8)).make(),
  );
}
