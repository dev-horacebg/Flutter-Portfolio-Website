import 'package:flutter_portfolio/blog/post/widget/blog_post_widget.dart';
import 'package:flutter_web/widgets.dart';

class AboutMeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: BlogPostWidget(
        title: "About me",
        content: "Softward engineer based in London working primarily with Android (since 2010) and a little bit of Flutter.\n\n"
            "I'm now a part of the Android team at ASOS.com where I work with Kotlin, RxJava ViewModel and LiveData.\n\n"
            "I put this website together in Flutter so consider this a BETA while I explore Flutter for the Web and while the Flutter team actually finish it!\n\n"
            "My plan is to use the Wordpress API to surface blog posts so watch this space!",
      )
    );
  }
}
