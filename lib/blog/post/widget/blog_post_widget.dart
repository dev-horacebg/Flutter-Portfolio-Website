import 'package:flutter_web/material.dart';
import 'package:flutter_web/widgets.dart';

class BlogPostWidget extends StatelessWidget {
  final String title;
  final String content;

  BlogPostWidget({Key key, @required this.title, @required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: IgnorePointer(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Text(
                title,
                style: Theme.of(context).textTheme.display1,
              ),
            ),
            Text(
              content,
              style: Theme.of(context).textTheme.body2,
            )
          ],
        ),
      ),
    );
  }
}
