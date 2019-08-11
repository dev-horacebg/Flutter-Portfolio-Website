import 'package:flutter_portfolio/projects/widget/project_item_widget.dart';
import 'package:flutter_web/material.dart';
import 'package:flutter_web/widgets.dart';

class ProjectGridWidget extends StatelessWidget {
  const ProjectGridWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      crossAxisCount: 2,
      childAspectRatio: 1,
      children: [
        ProductItemWidget("ASOS"),
        ProductItemWidget("IG"),
        ProductItemWidget("Rated People"),
        ProductItemWidget("Accenture"),
      ],
    );
  }
}
