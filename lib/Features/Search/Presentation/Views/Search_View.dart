import 'package:bookyapp/Features/Search/Presentation/Views/Widgets/SearchViewBody.dart';
import 'package:flutter/material.dart';
class Search_Viwe extends StatelessWidget {
  const Search_Viwe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: SafeArea(

          child: Search_Viwe_Body()

      ),
    );
  }
}
