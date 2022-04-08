import 'package:http/http.dart' as http;

const String baseUrl = 'https://space-1623905-1309646995.ap-shanghai.run.tcloudbase.com';

Future<String> sayHello() async {
  final response = await http
      .get(Uri.parse(baseUrl + '/hello'));

  if (response.statusCode == 200) {
    return response.body;
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('请求错误');
  }
}