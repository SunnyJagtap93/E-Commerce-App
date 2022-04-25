import 'package:flutter/material.dart';
import 'package:flutter_application_1/Model/Products.dart';
import 'package:flutter_application_1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item Product;

  const HomeDetailPage({Key? key, required this.Product})
      : assert(Product != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: MyTheme.creamColor,
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          children: [
            "\$ ${Product.price}".text.bold.xl2.make(),
            ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(MyTheme.dartBluishColor),
                        shape: MaterialStateProperty.all(StadiumBorder())),
                    child: "Add To Cart".text.xl.make())
                .wh(140, 33)
          ],
        ).p16(),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Hero(
              tag: Key(Product.id.toString()),
              child: Image.network(Product.imageurl).h(210)),
          Expanded(
              child: VxArc(
            height: 30.0,
            edge: VxEdge.TOP,
            arcType: VxArcType.CONVEY,
            child: Container(
              width: context.screenWidth,
              color: Colors.white,
              child: Column(
                children: [
                  Product.name.text.black.xl3.bold.make(),
                  Product.desc.text.textStyle(context.captionStyle).xl.make(),
                  15.heightBox,
                  "Duo takimata sea invidunt aliquyam sadipscing justo amet dolore et ea. Ea amet clita ut sed tempor lorem, aliquyam elitr elitr magna dolor nonumy at magna, ea diam accusam sadipscing justo duo, amet dolor invidunt kasd ipsum aliquyam. Clita stet labore accusam invidunt dolore sadipscing lorem."
                      .text
                      .textStyle(context.captionStyle)
                      .make()
                      .p(10)
                ],
              ).py(45),
            ),
          ))
        ],
      )),
    );
  }
}
