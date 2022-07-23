import 'package:news/model/category_model.dart';

List<CategoryModel> getCategories() {
  // ignore: deprecated_member_use
  List<CategoryModel> categories = <CategoryModel>[];
  CategoryModel categoryModel = new CategoryModel();
  categoryModel.categoryName = 'Buisness';
  categoryModel.Image =
      "https://images.unsplash.com/photo-1507679799987-c73779587ccf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1471&q=80";
  categories.add(categoryModel);
  categoryModel = new CategoryModel();

  categoryModel.categoryName = 'Entertainment';
  categoryModel.Image =
      "https://images.unsplash.com/photo-1586899028174-e7098604235b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1471&q=80";
  categories.add(categoryModel);
  categoryModel = new CategoryModel();

  categoryModel.categoryName = 'General';
  categoryModel.Image =
      'https://images.unsplash.com/photo-1451187580459-43490279c0fa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1472&q=80';
  categories.add(categoryModel);
  categoryModel = new CategoryModel();
  categoryModel.categoryName = 'Health';
  categoryModel.Image =
      'https://images.unsplash.com/photo-1657664043009-c4975cb4eed3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1374&q=80';
  categories.add(categoryModel);
  categoryModel = new CategoryModel();
  categoryModel.categoryName = 'Sports';
  categoryModel.Image =
      'https://images.unsplash.com/photo-1530549387789-4c1017266635?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80';
  categories.add(categoryModel);
  categoryModel = new CategoryModel();
  categoryModel.categoryName = 'Science';
  categoryModel.Image =
      'https://images.unsplash.com/photo-1507668077129-56e32842fceb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80';
  categories.add(categoryModel);
  return categories;
}
