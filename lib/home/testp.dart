import 'package:anitex/anitex.dart';
import 'package:flutter/material.dart';

class Counter extends StatelessWidget {
  const Counter(this.value, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedText('$value', style: Theme.of(context).textTheme.headline4)