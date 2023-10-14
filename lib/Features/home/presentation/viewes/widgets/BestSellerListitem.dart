import 'package:bookyapp/Core/utils/Styles.dart';
import 'package:bookyapp/Core/utils/assets.dart';
import 'package:bookyapp/Features/home/presentation/viewes/widgets/BookRating.dart';
import 'package:flutter/material.dart';
class BestSellerListitem extends StatelessWidget {
  const BestSellerListitem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.7/4,
            child: Container(
              decoration:  BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.red,
                  image:  const DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(AssetsData.testimage)
                  )
              ),

            ),
          ),
           const SizedBox(width: 30,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 SizedBox(
                   width:MediaQuery.of(context).size.width*.5,
                   child: const Text('Harry Potter and the Goblet of Fire',
                     maxLines: 2,
                     overflow: TextOverflow.ellipsis,
                     style:Styles.textStyle20 ,),
                 ),
                 const SizedBox(height: 3,),
                 Text('J.K. Rowling',style: Styles.textStyle14.copyWith(
                   color: const Color(0xff707070)
                 ),
                 ),
                  const SizedBox(height:3),
                  Row(
                   children: [
                    Text('19.99 €',style: Styles.textStyle20.copyWith(
                      fontWeight: FontWeight.bold
                    ),),
                     const Spacer(),
                     const BookRatingItem()
                   ],
                 )
               ],
           ),
            )
        ],
        
      ),
    );
  }
}









