import 'package:flutter_portfolio/responsive_widget.dart';
import 'package:flutter_web/material.dart';
import 'package:flutter_web/widgets.dart';

class HomeAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: AppBar(
        title: Column(
          children: [
            Text(
              "Horace Bell-Gam",
              style: TextStyle(color: Colors.white),
            ),
            Text("Something something Android Engineer")
          ],
        ),
        elevation: 0,
        centerTitle: false,
      ),
    );
  }
}
