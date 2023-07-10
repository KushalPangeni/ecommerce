import 'package:ecommerce/consts/consts.dart';

Widget customTextField(String? title, String? hint, controller, {bool? isPass}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      title!.text.color(redColor).size(16).fontFamily(semibold).make(),
      5.heightBox,
      TextFormField(
        controller: controller,
        obscureText: isPass ?? false,
        decoration: InputDecoration(
            hintStyle: const TextStyle(fontFamily: semibold, color: textfieldGrey),
            hintText: hint!,
            isDense: true,
            fillColor: lightGrey,
            filled: true,
            border: InputBorder.none,
            focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: redColor))),
      )
    ],
  );
}
