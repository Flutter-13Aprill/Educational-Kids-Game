import 'package:flutter/material.dart';

void customPush(context, Widget path) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => path));
}

void customReplacementNavigate(context, Widget path) {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => path),
  );
}
