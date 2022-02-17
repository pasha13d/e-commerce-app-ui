import 'package:e_commerce_app_ui/constants.dart';
import 'package:e_commerce_app_ui/models/product.dart';
import 'package:e_commerce_app_ui/screens/components/categories.dart';
import 'package:e_commerce_app_ui/screens/components/item_card.dart';
import 'package:e_commerce_app_ui/screens/details/details_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text("Women",
            style: Theme.of(context).textTheme.headline5?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Categories(),
        Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
              child: GridView.builder(
                itemCount: products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.75,
                  mainAxisSpacing: kDefaultPaddin,
                  crossAxisSpacing: kDefaultPaddin,
                ),
                itemBuilder: (context, index) => ItemCard(
                  product: products[index],
                  press: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailsScreen(product: products[index],
                          )
                      )
                  ),
                ),
              ),
            )
        ),
      ],
    );
  }
}

