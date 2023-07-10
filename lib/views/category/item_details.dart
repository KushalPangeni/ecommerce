import 'dart:developer';

import 'package:ecommerce/consts/consts.dart';
import 'package:ecommerce/consts/lists.dart';
import 'package:ecommerce/widgets/our_button.dart';

class ItemDetails extends StatelessWidget {
  final String? title;
  const ItemDetails({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey,
      appBar: AppBar(
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.share,
                color: darkFontGrey,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite_outline,
                color: darkFontGrey,
              )),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(12),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VxSwiper.builder(
                  enlargeCenterPage: true,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Image.asset(
                      imgFc5,
                      width: context.screenWidth,
                      fit: BoxFit.cover,
                    ).box.roundedSM.clip(Clip.antiAlias).margin(const EdgeInsets.symmetric(horizontal: 5)).make();
                  }),
              10.heightBox,
              title!.text.size(18).fontFamily(bold).color(darkFontGrey).make(),
              10.heightBox,
              VxRating(
                onRatingUpdate: (value) {},
                count: 5,
                stepInt: true,
                size: 30,
                selectionColor: golden,
              ),
              10.heightBox,
              "\$30,000".text.color(redColor).size(20).bold.make(),
              10.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      "Seller".text.semiBold.color(darkFontGrey).size(16).make(),
                      5.heightBox,
                      "In House Brands".text.semiBold.color(darkFontGrey).size(16).make(),
                    ],
                  ),
                  const CircleAvatar(
                    backgroundColor: lightGrey,
                    child: Icon(
                      Icons.house,
                      color: Colors.amber,
                    ),
                  )
                ],
              ).box.color(whiteColor).roundedSM.padding(const EdgeInsets.all(12)).make(),
              20.heightBox,
              Column(
                children: [
                  Row(
                    children: [
                      "Color".text.color(darkFontGrey).semiBold.size(16).make().box.width(100).make(),
                      // 50.widthBox,
                      Row(
                        children: List.generate(
                          3,
                          (index) => VxBox()
                              .shadowSm
                              .roundedFull
                              .size(40, 40)
                              .color(Vx.randomPrimaryColor)
                              .margin(const EdgeInsets.symmetric(horizontal: 5, vertical: 5))
                              .make(),
                        ),
                      )
                    ],
                  ),
                  10.heightBox,
                  Row(
                    children: [
                      "Quantity".text.semiBold.color(darkFontGrey).size(16).make().box.width(100).make(),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.remove,
                                size: 25,
                              )).box.roundedFull.color(lightGrey).size(40, 40).outerShadowSm.make(),
                          10.widthBox,
                          "0".text.color(darkFontGrey).size(18).semiBold.make(),
                          10.widthBox,
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.add,
                                size: 25,
                              )).box.roundedFull.color(lightGrey).size(40, 40).outerShadowSm.make(),
                        ],
                      )
                    ],
                  ),
                  10.heightBox,
                  Row(
                    children: [
                      "Total Price".text.semiBold.size(16).color(darkFontGrey).make().box.width(100).make(),
                      "\$80 ".text.color(redColor).size(18).semiBold.make()
                    ],
                  ),
                  10.heightBox
                ],
              ).box.white.roundedSM.padding(const EdgeInsets.fromLTRB(12, 4, 8, 4)).make(),
              20.heightBox,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  "Description".text.fontFamily(semibold).color(darkFontGrey).size(16).make().box.width(100).make(),
                  "This is dummy description.".text.fontFamily(semibold).color(darkFontGrey).size(16).make(),
                ],
              ).box.white.roundedSM.width(context.screenWidth).padding(const EdgeInsets.all(12)).make(),
              20.heightBox,
              ListView(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: List.generate(
                    itemDetailsList.length,
                    (index) => ListTile(
                          onTap: () {
                            log('Tile tapped');
                          },
                          trailing: const Icon(Icons.keyboard_arrow_right_rounded),
                          title: itemDetailsList[index].text.fontFamily(semibold).color(darkFontGrey).make(),
                        ).box.color(whiteColor).margin(const EdgeInsets.symmetric(vertical: 5)).roundedSM.make()),
              ),
              10.heightBox,
              productYouMayLike.text.color(darkFontGrey).fontFamily(bold).size(16).make(),
              10.heightBox,
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                      6,
                      (index) => Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                imgP1,
                                fit: BoxFit.fill,
                                width: 150,
                              ),
                              10.heightBox,
                              "Apex Predator 16GB RAM 512 SSD"
                                  .text
                                  .fontFamily(semibold)
                                  .maxLines(10)
                                  .color(darkFontGrey)
                                  .make(),
                              "\$1200 ".text.fontFamily(bold).color(redColor).size(16).make(),
                            ],
                          )
                              .box
                              .width(context.screenWidth * 0.6)
                              .white
                              .roundedSM
                              .padding(const EdgeInsets.all(8))
                              .clip(Clip.antiAlias)
                              .margin(const EdgeInsets.symmetric(horizontal: 5))
                              .make()),
                ),
              ),
              10.heightBox,

              //last buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                      child: ourButton(title: "Add to Cart", onPress: () {}, color: redColor, textColor: whiteColor)),
                  5.widthBox,
                  Expanded(
                      child: ourButton(
                          title: "Buy Now", onPress: () {}, color: Colors.orange.shade300, textColor: whiteColor)),
                ],
              ),
              5.heightBox
            ],
          ),
        ),
      ),
    );
  }
}
