import 'package:ecommerce/const.dart';
import 'package:http/http.dart' as http;

class RemotePopularCategoryServices {
  var client = http.Client();
  var remoteUrl = '$baseUrl/api/popular-categories';

  // Future<dynamic> get() async {
  //   var response = await client.get(Uri.parse());
  //   return response;
  // }
}
