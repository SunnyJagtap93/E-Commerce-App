import 'package:flutter/material.dart';
import 'package:flutter_application_1/Model/Products.dart';
import 'package:flutter_application_1/pages/home_details.dart';
import 'package:flutter_application_1/widgets/home_widgets/catalog_image.dart';
import 'package:flutter_application_1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: products.items.length,
      itemBuilder: (context, index) {
        final Product = products.items[index];
        return InkWell(
            onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HomeDetailPage(Product: Product)),
                ),
            child: CatalogItem(Product: Product));
      },
    );
  }
}

class CatalogItem extends StatelessWidget {
  final Item Product;
  const CatalogItem({Key? key, required this.Product})
      : assert(Product != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          Hero(
              tag: Key(Product.id.toString()),
              child: Catalogimage(image: Product.imageurl)),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Product.name.text.black.make(),
              Product.desc.text.textStyle(context.captionStyle).make(),
              8.heightBox,
              ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                children: [
                  "\$${Product.price}".text.bold.make(),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(MyTheme.dartBluishColor),
                        shape: MaterialStateProperty.all(StadiumBorder())),
                    child: "Add To Cart".text.make(),
                  ).wh(125, 30)
                ],
              )
            ],
          ))
        ],
      ),
    ).white.roundedSM.square(120).make().py(13);
  }
}
