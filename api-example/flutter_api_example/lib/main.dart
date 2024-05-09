import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_api_example/album.dart';
import 'package:flutter_api_example/dart_api_example.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp(futureAlbum: fetchAlbum('2', http.Client())));
}

class MyApp extends StatefulWidget {
  final Future<Album> futureAlbum;
  const MyApp({super.key, required this.futureAlbum});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Fetch Data Example'),
        ),
        body: Center(
          child: FutureBuilder<Album>(
            future: widget.futureAlbum,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(
                  snapshot.data!.title,
                  key: Key('data'),
                );
              } else if (snapshot.hasError) {
                return Text(
                  '${snapshot.error}',
                  key: Key('data'),
                );
              }
              // By default, show a loading spinner.
              return const CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}
