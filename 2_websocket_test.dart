import 'dart:convert';

import 'package:web_socket_channel/io.dart';

Future<void> connectWebSocket() async {
  const url = 'ws://54.145.104.165:55333/socket';
  const token = 'Bearer token123';

  final headers = {
    'Authorization': token,
    'Sec-WebSocket-Protocol': 'jwt',
  };

  final channel = IOWebSocketChannel.connect(
    Uri.parse(url),
    headers: headers,
  );

  channel.sink.add(jsonEncode({'type': 'ping'}));

  channel.stream.listen(
    (message) {
      print(message);
      final data = jsonDecode(message);
      if (data['error'] != null) {
        print('Authentication error: ${data['error']}');
      } else {
        print('Server response: $data');
      }
    },
    onError: (error) {
      print('Error: $error');
    },
    onDone: () {
      print('WebSocket connection closed');
    },
  );
}

void main() async {
  await connectWebSocket();
}
