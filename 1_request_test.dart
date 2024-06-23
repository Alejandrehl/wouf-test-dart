import 'dart:convert';

import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  const url = 'http://54.145.104.165:55333/data';
  const headers = {'Authorization': 'Bearer token123'};

  try {
    final response = await http.get(Uri.parse(url), headers: headers);

    if (response.statusCode == 200) {
      try {
        final data = jsonDecode(response.body) as Map<String, dynamic>;
        print('Test Result: $data');
      } catch (e) {
        print('Error decoding JSON: $e');
      }
    } else {
      print('Request error: ${response.statusCode}');
      print('Error message: ${response.body}');
    }
  } catch (e) {
    print('Exception during request: $e');
  }
}

void main() async {
  await fetchData();
}
