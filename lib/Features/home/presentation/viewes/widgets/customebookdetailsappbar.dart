import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:icons_flutter/icons_flutter.dart';
class CustomeBookDetailsAppBar extends StatelessWidget {
  const CustomeBookDetailsAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed: (){
          GoRouter.of(context).pop();

        },icon:const Icon(FlutterIcons.close_ant),),

        IconButton(onPressed: (){},icon:const Icon (FlutterIcons.shoppingcart_ant),)
      ],
    );
  }
}
