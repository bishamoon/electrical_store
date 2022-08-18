import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/product.dart';
import 'package:shop_app/widgets/details/details_body.dart';

class DetailsScreen extends StatelessWidget {
  final Product? product;
  const DetailsScreen({Key? key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: detailsAppbar(context),
      body: DetailsBody(
        product: product,
      ),
    );
  }

  AppBar detailsAppbar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: kBackgroundColor,
      leading: IconButton(
        padding: EdgeInsets.only(right: kDefaultPadding),
        icon: Icon(Icons.arrow_back),
        color: kPrimaryColor,
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: Text(
        'رجوع',
        style: Theme.of(context).textTheme.bodyText2,
      ),
    );
  }
}
