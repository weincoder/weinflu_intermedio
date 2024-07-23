import 'package:flavor_example/env/env_def.dart';
import 'package:flutter/material.dart';

class FlavorExampleAPP extends StatelessWidget {
  const FlavorExampleAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World! ${EnvDef.title}'),
        ),
      ),
    );
  }
}
