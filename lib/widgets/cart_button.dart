import 'package:ecommerce/consts/consts.dart';

Widget cartButton(String number, String subtitle) {
  return Column(
    children: [
      number.text.color(darkFontGrey).semiBold.size(16).maxLines(2).make(),
      5.heightBox,
      subtitle.text.color(darkFontGrey).make()
    ],
  ).box.roundedSM.padding(const EdgeInsets.all(4)).margin(const EdgeInsets.symmetric(horizontal: 2)).white.make();
}
