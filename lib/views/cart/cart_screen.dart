import 'package:ecommerce/consts/consts.dart';
import 'package:ecommerce/widgets/bg_widget.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
      body: SafeArea(
        child: Container(
            // padding: const EdgeInsets.all(8),
            child: "Cart is empty".text.makeCentered()),
      ),
    ));
  }
}
