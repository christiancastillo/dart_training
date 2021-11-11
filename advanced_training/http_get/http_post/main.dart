import 'package:http/http.dart' as http;

main(List<String> args) async{

  Uri url = Uri.parse('http://httpbin.org/post');
  var response = await http.post(url, body: 'name=ChristianYamilcolor=Blue',);
  print('Response status: ${response.statusCode}');
  print('Response body: ${response.body}');
}