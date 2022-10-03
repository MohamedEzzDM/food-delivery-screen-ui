import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/widgets/gap.dart';

import '../../../constants.dart';
import '../../../utils/size_config.dart';

class FoodItemComponent extends StatelessWidget {
  final String title,calories,description,imagePath;



  const FoodItemComponent({Key? key, required this.title, required this.calories, required this.description, required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return SizedBox(
      height: 335,
      width: 235,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Container(
            height: 320,
            width: 220,


            decoration: BoxDecoration(

              color: kPrimaryColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(
                getProportionateScreenWidth(20),
              ),
            ),

            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(

                      backgroundColor: kPrimaryColor.withOpacity(0.2),
                      radius: 70,
                    ),
                    Spacer(),
                    Text(
                      "\$20",
                      style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: getProportionateScreenWidth(25),
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    const Gap(width: 10,)

                  ],
                ),
                Gap(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Text(title,
                        maxLines: 1,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: getProportionateScreenWidth(17)
                        ),
                      ),
                      //just space
                      Gap(
                        height: 30,
                      ),
                      Text(
                        description,
                        maxLines: 2,
                        style: TextStyle(
                            fontSize: getProportionateScreenWidth(13),
                            color: Colors.grey
                        ),
                      ),
                      //just space
                      Gap(
                        height:30,
                      ),
                      Text(calories,
                        style: TextStyle(
                            fontSize: getProportionateScreenWidth(14),
                            color: Colors.grey
                        ),),
                      //just space
                      Gap(
                        height: 20,
                      ),

                    ],
                  ),
                )


              ],
            ),

          ),
          Align(
            alignment: Alignment.topLeft,
            child: CircleAvatar(
              foregroundImage: AssetImage(imagePath,),
              backgroundColor: Colors.transparent,

              radius: 75,

            ),
          ),

        ],
      ),


    );
  }
}
