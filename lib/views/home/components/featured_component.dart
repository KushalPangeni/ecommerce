import 'package:ecommerce/consts/consts.dart';

Widget featuredButton({String? title, icon}) {
  return Row(
    children: [
      Image.asset(
        icon,
        width: 60,
        fit: BoxFit.fill,
      ),
      title!.text.color(darkFontGrey).fontFamily(semibold).make(),
    ],
  )
      .box
      .roundedSM
      .shadowSm
      .padding(const EdgeInsets.all(4))
      .margin(const EdgeInsets.symmetric(horizontal: 4))
      .white
      .make();
}
