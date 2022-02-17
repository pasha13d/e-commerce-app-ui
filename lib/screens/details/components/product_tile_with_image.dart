import 'package:e_commerce_app_ui/models/product.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class ProductTileWithImage extends StatelessWidget {
  const ProductTileWithImage({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product? product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text("Aristocratic Hand Bag",
            style: TextStyle(color: Colors.white),
          ),
          Text("${product?.title}",
            style: Theme.of(context).textTheme.headline4?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: kDefaultPaddin),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: RichText(
                  text: TextSpan(
                    children: [
                      const TextSpan(text: "Price\n"),
                      TextSpan(text: "\$${product?.price}",
                          style: Theme.of(context).textTheme.headline4?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          )
                      ),
                    ]
                ),
                ),
              ),
              const SizedBox(width: kDefaultPaddin),
              Expanded(
                child: Image.asset("${product?.image}",
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}