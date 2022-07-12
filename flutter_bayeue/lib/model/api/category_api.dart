// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import 'package:flutter_bayeue/model/api/services.dart';
import 'package:flutter_bayeue/model/response_category.dart';
import 'package:flutter_bayeue/model/response_category_products.dart';

class CategoryApi {
  Future<List<ResultCategory>?> getCategory() async {
    try {
      var categoryData = await Dio().get('${Url.baseUrl}/category');

      print('Category info :${categoryData.data}');
      var categoryresponse = CategoryResponse.fromJson(categoryData.data);
      var categorydata = categoryresponse.result;
      return categorydata;
    } on DioError catch (e) {
      if (e.response != null) {
        print('Dio Error');
      } else {
        print('Sending Message');

        print(e.message);
      }
    }
    return null;
  }
}

class ProductsCategoryApi {
  static Future<ProductsCategory?> getProducts({required String id}) async {
    ProductsCategory? catproducts;
    try {
      var dio = Dio();
      var response = await dio.get('${Url.baseUrl}/products/category/$id');

      print('info : ${response.data}');
      catproducts = ProductsCategory.fromJson(response.data);
      return catproducts;
    } on DioError catch (e) {
      if (e.response != null) {
        print('Dio error');
      }
    }
    return catproducts;
  }
}
