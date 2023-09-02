import 'package:flutter/material.dart';
import 'package:stylish/constants.dart';
import 'package:stylish/models/Product.dart';
import 'package:stylish/screens/details/details_screen.dart';
import 'package:stylish/screens/home/components/section_title.dart';
import 'package:stylish/screens/home/product_card.dart';

class NewArrival extends StatelessWidget {
  const NewArrival({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: 'New Arrival',
          pressSeeAll: () {}, 
        ),
         SingleChildScrollView(
          scrollDirection: Axis.horizontal,
           child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: 
            List.generate(
            demoProduct.length, (index) =>
             Padding(
             padding: const EdgeInsets.only(left: defaultPadding),
             child: ProductCard(
              image: demoProduct[index].image,
              title: demoProduct[index].title,
              price: demoProduct[index].price,
              bg: demoProduct[index].bgColor,              
              press: (){
                Navigator.push(context,
                  MaterialPageRoute(
                    builder: (ctx) =>  DetailsScreen(product: demoProduct[index],),
                  ),
                );
              },
                         ),
           ),
        ),
      ),
           ),
      ],
    );
  }
}