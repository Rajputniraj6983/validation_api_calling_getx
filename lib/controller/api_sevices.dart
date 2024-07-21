import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class ApiServices {
  String api = "https://gorest.co.in/public-api/comments";

  Future<String?> apiCalling()
  async {
    Uri uri = Uri.parse(api);
    Response response = await http.get(uri);
    if(response.statusCode==200)
    {
      print("------------api called--------------------");
      return response.body;
    }
    return null;
  }
}

