# Wouf Test Dart

## ¿Cómo empezar?

1. Instalar dependencias: `flutter pub get`
2. Ejecutar los scripts: `dart [NOMBRE_SCRIPT]`
   - `dart 1_request_test.dart`
   - `dart 2_websocket_test.dart`

## 1. Requests HTTP con Autenticación

Escribe un fragmento de código en Dart usando el paquete `http` de Flutter para hacer una solicitud GET a `http://54.145.104.165:55333/data` con el token de autenticación `Bearer token123`. Indica cuál es la
respuesta del servidor: `{ message: WOUF! 35813 }`.

## 2. Conexiones WebSocket con Autenticación

Implementa una conexión a un WebSocket usando el paquete `web_socket_channel`. La URL es  `ws://54.145.104.165:55333/socket`, con el token `Bearer token123`. Indica cuál es la respuesta del
servidor: Para esta prueba a pesar de las multiples pruebas que realicé y que confio en que mi código esta bien, el resultado siempre fué: `{ "error": "Unauthorized" }.`.

