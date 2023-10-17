import 'package:flutter/material.dart';
import 'package:icons_flutter/icons_flutter.dart';

class CustomeSearchTextField extends StatelessWidget {
  const CustomeSearchTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder: methodOutlineInputBorder(),
        focusedBorder: methodOutlineInputBorder(),
        hintText: 'Search',
        suffixIcon: IconButton(
            onPressed: () {},
            icon: const Opacity(
                opacity: .8, child: Icon(FlutterIcons.search_oct))),
      ),
    );
  }

  OutlineInputBorder methodOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Colors.white, width: 1),
    );
  }
}