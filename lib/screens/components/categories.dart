import 'package:cloths/constants.dart';
import 'package:cloths/modals/Category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: List.generate(
        demo_categories.length,
        (index) => Padding(
          padding: const EdgeInsets.only(right: defaultPadding),
          child: CategoryCard(
              icon: demo_categories[index].icon,
              title: demo_categories[index].title,
              press: () {}),
        ),
      )),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key key,
    this.icon,
    this.title,
    this.press,
  }) : super(key: key);
  final String icon, title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: press,
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(defaultBorderRadius)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
              vertical: defaultPadding / 2, horizontal: defaultPadding / 4),
          child: Column(
            children: [
              SvgPicture.asset(icon),
              const SizedBox(
                height: defaultPadding / 2,
              ),
              Text(title, style: Theme.of(context).textTheme.subtitle2)
            ],
          ),
        ));
  }
}
