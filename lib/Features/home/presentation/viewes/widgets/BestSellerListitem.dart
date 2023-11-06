import 'package:bookyapp/Core/utils/AppRouter.dart';
import 'package:bookyapp/Core/utils/Styles.dart';
import 'package:bookyapp/Features/home/presentation/viewes/widgets/BookRating.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class BestSellerListitem extends StatelessWidget {
  const BestSellerListitem({Key? key, required this.image, required this.maintitle, required this.authorname, required this.price, }) : super(key: key);
  final String image;
  final String maintitle;
  final String authorname;
  final String price;
  // final String rating;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        GoRouter.of(context).push(AppRouter.KbookDetails);
      },
      child: SizedBox(
        height: 110,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.8/4,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: CachedNetworkImage(imageUrl: image,))
            ),
             const SizedBox(width: 30,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   SizedBox(
                     width:MediaQuery.of(context).size.width*.5,
                     child:  Text(maintitle,
                       maxLines: 2,
                       overflow: TextOverflow.ellipsis,
                       style:Styles.textStyle20 ,),
                   ),
                   const SizedBox(height: 3,),
                   Text(authorname,style: Styles.textStyle14.copyWith(
                     color: const Color(0xff707070)
                   ),
                   ),
                    const SizedBox(height:3),
                    Row(
                     children: [
                      Text(price,style: Styles.textStyle20.copyWith(
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
      ),
    );
  }
}









