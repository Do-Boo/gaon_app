import 'package:flutter/material.dart';

String colorToHex(Color color) => '#${color.value.toRadixString(16).substring(2)}';
