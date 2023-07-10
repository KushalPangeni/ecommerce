import 'package:ecommerce/consts/consts.dart';
import 'package:ecommerce/consts/lists.dart';
import 'package:ecommerce/views/home/components/featured_component.dart';
import 'package:ecommerce/widgets/home_buttons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      color: lightGrey,
      height: context.screenHeight,
      width: context.screenWidth,
      child: SafeArea(
        child: Column(
          children: [
            //Search Bar
            Container(
              alignment: Alignment.center,
              height: 60,
              color: lightGrey,
              child: TextFormField(
                decoration: const InputDecoration(
                  suffixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: whiteColor,
                  hintText: searchAnything,
                  hintStyle: TextStyle(color: textfieldGrey),
                  border: InputBorder.none,
                ),
              ),
            ),
            //swippers
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    VxSwiper.builder(
                        aspectRatio: 16 / 9,
                        height: 150,
                        enlargeCenterPage: true,
                        autoPlay: true,
                        itemCount: slidersList.length,
                        itemBuilder: (context, index) {
                          return Image.asset(
                            slidersList[index],
                            fit: BoxFit.fill,
                          ).box.rounded.clip(Clip.antiAlias).margin(const EdgeInsets.symmetric(horizontal: 8)).make();
                        }),
                    20.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        homeButtons(
                            context.screenWidth / 2.5, context.screenHeight * 0.15, icTodaysDeal, todayDeal, () {}),
                        homeButtons(
                            context.screenWidth / 2.5, context.screenHeight * 0.15, icFlashDeal, flashSale, () {}),
                      ],
                    ),
                    20.heightBox,
                    VxSwiper.builder(
                        aspectRatio: 16 / 9,
                        height: 150,
                        enlargeCenterPage: true,
                        autoPlay: true,
                        itemCount: slidersList2.length,
                        itemBuilder: (context, index) {
                          return Image.asset(
                            slidersList2[index],
                            fit: BoxFit.fill,
                          ).box.rounded.clip(Clip.antiAlias).margin(const EdgeInsets.symmetric(horizontal: 8)).make();
                        }),
                    20.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        homeButtons(
                            context.screenWidth / 3.5, context.screenHeight * 0.15, icCategories, categories, () {}),
                        homeButtons(context.screenWidth / 3.5, context.screenHeight * 0.15, icBrands, brand, () {}),
                        homeButtons(
                            context.screenWidth / 3.5, context.screenHeight * 0.15, icTopSeller, topSellers, () {}),
                      ],
                    ),
                    20.heightBox,
                    Align(
                        alignment: Alignment.centerLeft,
                        child: featuredCategories.text.color(darkFontGrey).size(18).fontFamily(semibold).make()),
                    10.heightBox,
                    SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(featuredTitles1.length, (index) {
                          return Column(
                            children: [
                              featuredButton(title: featuredTitles1[index], icon: featuredImages1[index]),
                              10.heightBox,
                              featuredButton(title: featuredTitles2[index], icon: featuredImages2[index]),
                              5.heightBox
                            ],
                          );
                        }),
                      ),
                    ),
                    20.heightBox,
                    Container(
                      padding: const EdgeInsets.all(8),
                      // height: 258,
                      width: context.screenWidth,
                      color: redColor,
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                        featuredProducts.text.white.size(18).semiBold.make(),
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
                        )
                      ]),
                    ),
                    20.heightBox,
                    //third swipper
                    VxSwiper.builder(
                        aspectRatio: 16 / 9,
                        height: 150,
                        enlargeCenterPage: true,
                        autoPlay: true,
                        itemCount: slidersList2.length,
                        itemBuilder: (context, index) {
                          return Image.asset(
                            slidersList2[index],
                            fit: BoxFit.fill,
                          ).box.rounded.clip(Clip.antiAlias).margin(const EdgeInsets.symmetric(horizontal: 8)).make();
                        }),
                    20.heightBox,
                    Align(
                        alignment: Alignment.centerLeft,
                        child: "Products".text.color(darkFontGrey).semiBold.size(18).make()),
                    10.heightBox,
                    //Products GridView
                    GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 6,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2, mainAxisSpacing: 8, crossAxisSpacing: 8, mainAxisExtent: 300),
                        itemBuilder: (context, index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                imgP1,
                                width: 200,
                                fit: BoxFit.fill,
                              ),
                              const Spacer(),
                              "Apex Predator 16GB RAM 512 SSD"
                                  .text
                                  .fontFamily(semibold)
                                  .maxLines(10)
                                  .color(darkFontGrey)
                                  .make(),
                              5.heightBox,
                              "\$1200 ".text.fontFamily(bold).color(redColor).size(16).make(),
                              5.heightBox
                            ],
                          ).box.white.roundedSM.padding(const EdgeInsets.all(8)).make();
                        }),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
