import 'package:http/http.dart' as http;
import 'dart:convert' as jsonconv;

class NetworkHelper {
  NetworkHelper(this.url);
  final String url;
  Future getData() async {
    http.Response response = await http.get(Uri.parse(url));

    //http.Response response = await http.get(httpsURI);
    if (response.statusCode == 200) {
      String source = response.body;
      return jsonconv.jsonDecode(source);
    } else {
      print(response.statusCode);
    }
  }
}
