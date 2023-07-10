import 'package:ecommerce/consts/consts.dart';
import 'package:ecommerce/views/category/item_details.dart';
import 'package:ecommerce/widgets/bg_widget.dart';
import 'package:get/get.dart';

class CategoryDetails extends StatelessWidget {
  final String? title;
  const CategoryDetails({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
      appBar: AppBar(
        title: title!.text.fontFamily(bold).white.make(),
        elevation: 0,
      ),
      body: Container(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                    6,
                    (index) => "Clothing $index"
                        .text
                        .makeCentered()
                        .box
                        .white
                        .roundedSM
                        .height(50)
                        .padding(const EdgeInsets.all(12))
                        .margin(const EdgeInsets.all(4))
                        .make()),
              ),
            ),
            10.heightBox,
            //items container
            Expanded(
                child: Container(
              color: lightGrey,
              child: GridView.builder(
                  physics: const BouncingScrollPhysics(),
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
                    )
                        .box
                        .white
                        .roundedSM
                        .padding(const EdgeInsets.all(8))
                        .margin(const EdgeInsets.fromLTRB(8, 8, 8, 0))
                        .make()
                        .onTap(() {
                      Get.to(() => const ItemDetails(title: 'Sports & Education'));
                    });
                  }),
            ))
          ],
        ),
      ),
    ));
  }
}
