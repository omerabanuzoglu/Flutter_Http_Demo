import 'package:http/http.dart' as http;

class ProductApi {
  static Future getProducts() {
    return http.get("http://10.0.2.2:3000/products");
  }

  static Future getProductsByCategoryId(int userId) {
    return http.get("http://10.0.2.2:3000/products?userId=$userId");
  }
}
