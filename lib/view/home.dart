import 'dart:html';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news/helper/data.dart';
import 'package:news/model/category_model.dart';
import 'package:news/view/categories_view.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHomePage> {
  // ignore: deprecated_member_use
  List<CategoryModel> category = <CategoryModel>[];
  @override
  void initState() {
    super.initState();
    category = getCategories();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Daily',
              style: TextStyle(color: Colors.orange),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'Updated',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'News',
              style: TextStyle(color: Colors.green),
            ),
          ],
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Container(
        child: Column(children: <Widget>[
          Container(
            height: 100,
            alignment: Alignment.center,
            child: ListView.builder(
              itemBuilder: ((context, index) {
                return CategoryTile(
                  imgUrl: category[index].Image,
                  categoryName: category[index].categoryName,
                );
              }),
              shrinkWrap: false,
              scrollDirection: Axis.horizontal,
              itemCount: category.length,
            ),
          ),
        ]),
      ),
    );
  }
}

class CategoryTile extends StatelessWidget {
  final imgUrl, categoryName;
  const CategoryTile({Key? key, this.imgUrl, this.categoryName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const CategoriesView()),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(right: 14),
        child: Stack(
          children: [
            ClipRRect(
              child: CachedNetworkImage(
                imageUrl: imgUrl,
                height: 60,
                width: 120,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: 60,
              width: 120,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.black26),
              child: Text(
                categoryName,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ArticleTile extends StatelessWidget {
  const ArticleTile(
      {Key? key,
      required this.title,
      required this.imageUrl,
      required this.discription})
      : super(key: key);
  final String title, imageUrl, discription;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.network(imageUrl,),
          Text(title),
          Text(discription),
        ],
      ),
    );
  }
}
