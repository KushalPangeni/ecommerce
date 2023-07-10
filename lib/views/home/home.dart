import 'package:ecommerce/consts/consts.dart';
import 'package:ecommerce/views/account/account_screen.dart';
import 'package:ecommerce/views/cart/cart_screen.dart';
import 'package:ecommerce/views/category/category_screen.dart';
import 'package:ecommerce/views/controller/home_controller.dart';
import 'package:ecommerce/views/home/home_screen.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());
    List<BottomNavigationBarItem> navBar = [
      BottomNavigationBarItem(
        icon: Image.asset(
          icHome,
          width: 26,
        ),
        label: home,
      ),
      BottomNavigationBarItem(
          icon: Image.asset(
            icCategories,
            width: 26,
          ),
          label: categories),
      BottomNavigationBarItem(
          icon: Image.asset(
            icCart,
            width: 26,
          ),
          label: cart),
      BottomNavigationBarItem(
          icon: Image.asset(
            icProfile,
            width: 26,
          ),
          label: account),
    ];
    List bodyScreen = const [HomeScreen(), CategoryScreen(), CartScreen(), AccountScreen()];

    return Scaffold(
      body: Obx(() => bodyScreen[controller.currentNavIndex.value]),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
            onTap: (value) {
              controller.currentNavIndex.value = value;
            },
            currentIndex: controller.currentNavIndex.value,
            selectedItemColor: redColor,
            selectedLabelStyle: const TextStyle(fontFamily: bold),
            type: BottomNavigationBarType.fixed,
            backgroundColor: whiteColor,
            items: navBar),
      ),
    );
  }
}
