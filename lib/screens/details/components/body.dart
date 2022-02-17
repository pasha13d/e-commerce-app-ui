import 'package:e_commerce_app_ui/constants.dart';
import 'package:e_commerce_app_ui/models/product.dart';
import 'package:e_commerce_app_ui/screens/details/components/add_to_cart.dart';
import 'package:e_commerce_app_ui/screens/details/components/color_and_size.dart';
import 'package:e_commerce_app_ui/screens/details/components/counter_with_fav_btn.dart';
import 'package:e_commerce_app_ui/screens/details/components/description.dart';
import 'package:e_commerce_app_ui/screens/details/components/product_tile_with_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsBody extends StatelessWidget {
  final Product? product;
  const DetailsBody({Key? key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(top: size.height * 0.2),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      ColorAndSize(product: product),
                      const SizedBox(height: kDefaultPaddin / 2),
                      Description(product: product),
                      const SizedBox(height: kDefaultPaddin / 2),
                      const CounterWithFavBtn(),
                      const SizedBox(height: kDefaultPaddin / 2),
                      AddToCart(product: product)
                    ],
                  ),
                ),
                ProductTileWithImage(product: product),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
