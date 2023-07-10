import 'package:ecommerce/consts/consts.dart';
import 'package:ecommerce/consts/lists.dart';
import 'package:ecommerce/views/category/category_details.dart';
import 'package:ecommerce/widgets/bg_widget.dart';
import 'package:get/get.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
      appBar: AppBar(
        title: categories.text.make(),
        elevation: 0,
      ),
      body: Container(
        padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
        child: GridView.builder(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            itemCount: 8,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, mainAxisSpacing: 8, crossAxisSpacing: 8, mainAxisExtent: 200),
            itemBuilder: (context, index) {
              return Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
                Image.asset(
                  categoriesImages[index],
                  height: 120,
                  width: context.screenWidth,
                  fit: BoxFit.cover,
                ),
                const Spacer(),
                10.heightBox,
                categoriesList[index].text.make(),
                20.heightBox
              ])
                  .box
                  .white
                  .roundedSM
                  .clip(Clip.antiAlias)
                  .padding(const EdgeInsets.all(5))
                  .outerShadowSm
                  .make()
                  .onTap(() {
                Get.to(() => CategoryDetails(title: categoriesList[index]));
              });
            }),
      ),
    ));
  }
}
