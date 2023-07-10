import 'package:ecommerce/consts/consts.dart';
import 'package:ecommerce/consts/lists.dart';
import 'package:ecommerce/widgets/bg_widget.dart';
import 'package:ecommerce/widgets/cart_button.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.edit,
                      color: Colors.white,
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Image.asset(
                    imgB1,
                    width: 80,
                    fit: BoxFit.fill,
                  ).box.roundedFull.clip(Clip.antiAlias).make(),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        "Dummy User".text.white.semiBold.make(),
                        5.heightBox,
                        "dummy@gmail.com".text.white.make(),
                      ],
                    ),
                  ),
                  OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(side: const BorderSide(color: Colors.white)),
                      child: logout.text.color(whiteColor).semiBold.make())
                ],
              ),
            ),
            // 20.heightBox,
            //Cart details in button
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: cartButton("00", "in your cart"),
                  ),
                  Expanded(
                    child: cartButton("22", "in your wishlist"),
                  ),
                  Expanded(
                    child: cartButton("3037", "you ordered"),
                  )
                ],
              ),
            ),
            10.heightBox,
            // Column(
            //   children: [
            //     const Icon(
            //       Icons.edit_calendar_outlined,
            //       color: Colors.white,
            //       // size: 24,
            //     ),
            //     "Edit Profile".text.white.size(12).make()
            //   ],
            // ).box.color(redColor).padding(const EdgeInsets.all(8)).roundedSM.make(),
            ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return ListTile(
                        onTap: () {},
                        title: profileButtonList[index].text.semiBold.color(darkFontGrey).size(14).make(),
                        leading: Image.asset(
                          profileButtonIcon[index],
                          color: darkFontGrey,
                          width: 18,
                        ),
                      );
                    },
                    separatorBuilder: ((context, index) {
                      return const Divider(
                        color: lightGrey,
                      );
                    }),
                    itemCount: profileButtonIcon.length)
                .box
                .white
                .roundedSM
                .padding(const EdgeInsets.all(8))
                .shadowSm
                .make()
                .box
                .padding(const EdgeInsets.all(12))
                .color(redColor)
                .make()
          ],
        ),
      ),
    ));
  }
}
