import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';

class LabClinicasCoreConfig extends StatelessWidget {

  const LabClinicasCoreConfig({ 
    super.key,
    this.binding, 
    this.pages, 
    this.pagesBuilders, 
    this.modules, 
    required this.title,
  });


  final ApplicationBindings? binding;
  final List<FlutterGetItPageRouter>? pages;
  final List<FlutterGetItPageBuilder>? pagesBuilders;
  final List<FlutterGetItModule>? modules;
  final String title;

  @override
  Widget build(BuildContext context) {
    return FlutterGetIt(
      bindings: binding,
      pages: [
        ...pages ?? [],
        ...pagesBuilders ?? []
      ],
      modules: modules,
      builder: (context, routes, flutterGetItNavObserver) {
        return MaterialApp(
          navigatorObservers: [
            flutterGetItNavObserver,
          ],
          routes: routes,
        );
      },
    );
  }
}