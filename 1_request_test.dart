import 'dart:convert';

import 'package:http/http.dart' as http;

void main() async {
  final url = 'http://54.145.104.165:55333/data';

  // Encabezados de la solicitud
  final headers = {
    'Authorization': 'Bearer token123',
  };

  // Hacer la solicitud GET
  final response = await http.get(Uri.parse(url), headers: headers);

  // Verificar el estado de la respuesta
  if (response.statusCode == 200) {
    // La solicitud fue exitosa
    print('Respuesta del servidor: ${response.body}');

    // Si la respuesta es JSON, puedes decodificarla así:
    final data = jsonDecode(response.body);
    print('Datos decodificados: $data');
  } else {
    // Hubo un error en la solicitud
    print('Error en la solicitud: ${response.statusCode}');
    print('Mensaje de error: ${response.body}');
  }
}
