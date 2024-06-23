# 🐾 Wouf Test Dart

Este proyecto contiene una serie de pruebas para evaluar funcionalidades en Flutter usando Dart. Incluye ejemplos de solicitudes HTTP, conexiones WebSocket, obtención de ubicación mediante GPS y manejo de notificaciones push en segundo plano.

## 🚀 ¿Cómo empezar?

1. Instalar dependencias: `flutter pub get`
2. Ejecutar los scripts: `dart [NOMBRE_SCRIPT]`
   - `dart 1_request_test.dart`
   - `dart 2_websocket_test.dart`

## 1. 🌐 Solicitudes HTTP con Autenticación

Escribe un fragmento de código en Dart usando el paquete [http](https://pub.dev/packages/http) de Flutter para hacer una solicitud GET a `http://54.145.104.165:55333/data` con el token de autenticación `Bearer token123`. Indica cuál es la respuesta del servidor.

- `1_request_test.dart`.
- La respuesta del servidor es: `{ message: WOUF! 35813 }`.

## 2. 🔌 Conexiones WebSocket con Autenticación

Implementa una conexión a un WebSocket usando el paquete [web_socket_channel](https://pub.dev/packages/web_socket_channel). La URL es `ws://54.145.104.165:55333/socket`, con el token `Bearer token123`. Indica cuál es la respuesta del servidor.

- `2_websocket_test.dart`
- La respuesta del servidor siempre fue: `{ "error": "Unauthorized" }` a pesar de las múltiples pruebas realizadas.

## 3. 📍 GPS y Localización

Escribe un código en Dart usando el paquete [geolocator](https://pub.dev/packages/geolocator) que obtenga la ubicación actual del dispositivo y muestre la latitud y longitud en la consola:

- `3_gps_test.dart`
- Para resolver esta prueba, creé un nuevo proyecto Flutter con una pantalla de inicio que tiene un botón en el centro para obtener las coordenadas utilizando el paquete [geolocator](https://pub.dev/packages/geolocator) y mostrarlas en la consola. Puedes ver la implementación completa aquí: [https://github.com/Alejandrehl/wouf-test-flutter](https://github.com/Alejandrehl/wouf-test-flutter).

## 4. 📲 Notificaciones Push

Explica cómo manejarías la recepción de notificaciones push en segundo plano en una aplicación Flutter. Incluye fragmentos de código si es necesario.

- Para manejar la recepción de notificaciones push en segundo plano en una aplicación Flutter utilizando Firebase, integraría la librería firebase_messaging y configuraría un onBackgroundMessage handler. Este handler permite gestionar las notificaciones cuando la aplicación está en segundo plano o cerrada, asegurando que los mensajes se procesen correctamente incluso cuando la aplicación no está activa. Esto garantizaría que las notificaciones sean recibidas y procesadas en todas las condiciones.
- Link de referencia: [Firebase Messaging - Message Types](https://firebase.flutter.dev/docs/messaging/usage/#message-types).
