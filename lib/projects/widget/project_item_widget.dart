import 'package:flutter_web/material.dart';
import 'package:flutter_web/widgets.dart';

class ProductItemWidget extends StatelessWidget {
  final String name;

  ProductItemWidget(this.name);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(name, style: Theme.of(context).textTheme.display1),
    );
  }
}
