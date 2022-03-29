import 'package:authentification/models/product_model.dart';
import 'package:flutter/cupertino.dart';

class ProductProvider with ChangeNotifier {
  List<ProductModel> kathmanduProductList = [];

  fatchKathmanduProductData() {
    FirebaseFireStore.instance.collection("").get(); 
  }
}
