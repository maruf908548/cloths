import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cloths/constants.dart';

class SearchForm extends StatelessWidget {
  const SearchForm({
    Key key,
  }) : super(key: key);

  get primaryColor => null;

  double get defaultBorderRadius => null;

  @override
  Widget build(BuildContext context) {
    return Form(
        child: TextFormField(
      onSaved: (value) {},
      decoration: InputDecoration(
          hintText: "Search Items....",
          filled: true,
          fillColor: Colors.white,
          border: outlineInputBorder,
          enabledBorder: outlineInputBorder,
          focusedBorder: outlineInputBorder,
          prefixIcon: Padding(
            padding: const EdgeInsets.all(14),
            child: SvgPicture.asset("assets/icons/Search.svg"),
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: defaultPadding, vertical: defaultPadding / 2),
            child: SizedBox(
              height: 48,
              width: 48,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: primaryColor,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)))),
                onPressed: () {},
                child: SvgPicture.asset("assets/icons/Filter.svg"),
              ),
            ),
          )),
    ));
  }
}

const outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(12)),
    borderSide: BorderSide.none);
