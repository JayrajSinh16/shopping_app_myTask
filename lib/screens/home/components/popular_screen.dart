import 'package:flutter/material.dart';
import 'package:stylish/constants.dart';
import 'package:stylish/models/Product.dart';
import 'package:stylish/screens/details/details_screen.dart';
import 'package:stylish/screens/home/components/section_title.dart';
import 'package:stylish/screens/home/product_card.dart';

class Popular extends StatelessWidget {
  const Popular({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: 'Popular',
          pressSeeAll: () {}, 
        ),
         SingleChildScrollView(
          scrollDirection: Axis.horizontal,
           child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: 
            List.generate(
            demoProductPopular.length, (index) =>
             Padding(
             padding: const EdgeInsets.only(left: defaultPadding),
             child: ProductCard(
              image: demoProductPopular[index].image,
              title: demoProductPopular[index].title,
              press: (){
                Navigator.push(context,
                  MaterialPageRoute(
                    builder: (ctx) =>  DetailsScreen(product: demoProductPopular[index],),
                  ),
                );
              },
              price: demoProductPopular[index].price,
              bg: demoProductPopular[index].bgColor,
                         ),
           ),
        ),
      ),
           ),
      ],
    );
  }
}
