
import 'package:flutter/material.dart';
import 'package:stylish/constants.dart';



class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key, required this.image, required this.title, required this.bg, required this.price, required this.press,
  }) : super(key: key);

  final String image,title;
  final Color bg;
  final int price;
  final VoidCallback press;
 
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: 154,
        padding: const EdgeInsets.all(defaultPadding/4),
        decoration: const  BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius),
          ),
        ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: bgColor,
                borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius))
                ),
              child: Image.asset(image,
              height: 132,
              ),
            ),
            const SizedBox(height: defaultPadding/4,),
             Row(
               children: [
                   Expanded(
                    child: Text( title,
                      style: const TextStyle(
                      color: Colors.black
                            ),
                    ),
                  ),
                  const SizedBox(width: defaultPadding/4,),
                  Text('₹ $price',
                  style: Theme.of(context).textTheme.titleSmall,
                  ),
               ],
             )
          ],
        ),
      ),
    );
  }
}
