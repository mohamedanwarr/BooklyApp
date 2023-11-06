// ignore_for_file: camel_case_types, file_names

import 'package:bookyapp/Core/utils/Styles.dart';
import 'package:bookyapp/Features/Search/Presentation/Views/Widgets/CustomeSerarchTextFiled.dart';
import 'package:bookyapp/Features/Search/Presentation/Views/Widgets/SearchResultListView.dart';
import 'package:flutter/material.dart';

class Search_Viwe_Body extends StatelessWidget {
  const Search_Viwe_Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomeSearchTextField(),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Text('Search  Results', style: Styles.textStyle18),
                ),
                Expanded(child: SearchResultListView(books: [],)),
              ],
            ),
          ),
        )
      ],
    );
  }
}
