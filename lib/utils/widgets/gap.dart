import 'package:flutter/cupertino.dart';
import 'package:food_delivery_app/utils/size_config.dart';

class Gap extends StatelessWidget {
  final double? height;
  final double? width;

  const Gap({
    Key? key,
    this.height,
    this.width,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return height == null ?SizedBox(width: getProportionateScreenWidth(width!)):SizedBox(height: getProportionateScreenHeight(height!));

  }
}
