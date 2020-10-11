import 'package:flutter/material.dart';
import 'package:print_pro_hashtag/categories/category_item.dart';
import 'package:print_pro_hashtag/repositories/category_repository.dart';

class CategoryList extends StatefulWidget {

  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  List<CategoryRepository> items = [
    CategoryRepository(
      title: "New Products",
      isActive: true,
    ),
    CategoryRepository(
      title: "Promotions",
      isActive: false,
    ),
    CategoryRepository(
      title: "Catering Industry",
      isActive: false,
    ),
    CategoryRepository(
      title: "Stickers",
      isActive: false,
    ),
    CategoryRepository(
      title: "Photo Products",
      isActive: false,
    ),
    CategoryRepository(
      title: "Presentation",
      isActive: false,
    ),
    CategoryRepository(
      title: "Outdoor advertising",
      isActive: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: items.map((CategoryRepository value) {
          return CategoryItem(
            categoryItem: CategoryRepository(
              title: value.title,
              isActive: value.isActive,
              press: () {
                setState(() {
                  for (int i = 0; i < items.length ; i++) {
                    items[i].isActive = false;
                  }
                  value.isActive = true;
                });
              },
            ),

          );
        }).toList(),
      ),
    );
  }
}
