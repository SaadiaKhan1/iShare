import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomRouter {
  Future<void> push(route, BuildContext context) async {
    await Navigator.of(context).push(new PageRouteBuilder(
        opaque: true,
        transitionDuration: const Duration(milliseconds: 500),
        pageBuilder: (BuildContext context, _, __) {
          return route;
        },
        transitionsBuilder: (_, Animation<double> animation, __, Widget child) {
          return new SlideTransition(
            child: child,
            position: new Tween<Offset>(
              begin: const Offset(1, 0),
              end: Offset.zero,
            ).animate(animation),
          );
        }));
  }
}
