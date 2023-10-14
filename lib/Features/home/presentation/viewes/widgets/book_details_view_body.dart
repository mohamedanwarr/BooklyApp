import 'package:bookyapp/Features/home/presentation/viewes/widgets/ItemOfListContainer.dart';
import 'package:bookyapp/Features/home/presentation/viewes/widgets/customebookdetailsappbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:icons_flutter/icons_flutter.dart';

class BookdetailsBody extends StatelessWidget {
  const BookdetailsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 20),
      child: Column(
        children: [
          const CustomeBookDetailsAppBar(),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*.19,vertical: 10),
            child: const customeBookItem(),
          )

        ],
      ),
    );
  }
}


