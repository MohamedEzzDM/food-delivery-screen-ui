import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery_app/constants.dart';
import 'package:food_delivery_app/utils/size_config.dart';

import '../../utils/widgets/gap.dart';
import 'components/food_item_compnent.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        actions: [
          SvgPicture.asset('assets/icons/menu.svg', height: 10, width: 10),
          const Gap(
            width: 10,
          )
        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: getProportionateScreenWidth(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Simple way to find\nTasty food",
                style: TextStyle(
                    fontSize: getProportionateScreenFont(15),
                    fontWeight: FontWeight.bold),
              ),
              const Gap(
                height: 20,
              ),
              Container(
                height: getProportionateScreenHeight(20),
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Text(
                      categories[index],
                      style: TextStyle(
                          color: index == 0
                              ? kPrimaryColor
                              : kTextColor.withOpacity(0.4),
                          fontSize: getProportionateScreenHeight(20)),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const Gap(
                      width: 42,
                    );
                  },
                  itemCount: categories.length,
                ),
              ),
              const Gap(
                height: 20,
              ),
              Padding(
                padding:
                    EdgeInsets.only(right: getProportionateScreenWidth(20)),
                child: TextFormField(
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: kPrimaryColor.withOpacity(0.4)),
                          borderRadius: BorderRadius.circular(
                              getProportionateScreenWidth(20))),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(
                              getProportionateScreenWidth(20)))),
                ),
              ),
              const Gap(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    FoodItemComponent(
                      title: 'pepperoni pizza',
                      calories: '920Kcal',
                      description:
                          'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.',
                      imagePath: 'assets/images/pizza.png',
                    ),
                    Gap(
                      width: 20,
                    ),
                    FoodItemComponent(
                      title: 'Vegan salad bowl',
                      calories: '420Kcal',
                      description:
                          'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.',
                      imagePath: 'assets/images/image_1.png',
                    ),
                    Gap(
                      width: 20,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),

      floatingActionButton: Container(
        padding: EdgeInsets.all(10),
        height: getProportionateScreenHeight(80),
        width: getProportionateScreenWidth(80),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: kPrimaryColor.withOpacity(.26),
        ),
        child: Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: kPrimaryColor,
          ),
          child: SvgPicture.asset("assets/icons/plus.svg"),
        ),
      ),
    );
  }
}

List categories = [
  'All',
  'Italian',
  'Asian',
  'Chinese',
  'Burgers',
];
