import 'package:flutter/material.dart';
import 'package:mix/mix.dart';

var style = AnimatedStyle(
  Style(
    $box.height(50),
    $box.width(50),
    $box.color(Colors.blue),
    $box.borderRadius(10),
    $on.hover(
      $box.height(100),
      $box.width(100),
      $box.color(Colors.red),
    ),
  ),
  duration: Durations.long1,
  curve: Curves.decelerate,
);
