import 'package:flavor_example/app/app.dart';
import 'package:flavor_example/env/env_def.dart';
import 'package:flutter/material.dart';

void main() {
  EnvDef.title = 'Production';
  runApp(const FlavorExampleAPP());
}

