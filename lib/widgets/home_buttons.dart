import 'package:ecommerce/consts/consts.dart';

Widget homeButtons(width, height, icon, String? title, onPress) {
  return Container(
    child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Image.asset(
        icon,
        width: 26,
      ),
      10.heightBox,
      title!.text.color(darkFontGrey).fontFamily(semibold).make()
    ]).box.rounded.size(width, height).white.make(),
  );
}
