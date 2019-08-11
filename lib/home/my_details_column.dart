import 'dart:html' as html;

import 'package:flutter_portfolio/about/widget/about_me_widget.dart';
import 'package:flutter_portfolio/colours.dart';
import 'package:flutter_portfolio/responsive_widget.dart';
import 'package:flutter_web/material.dart';
import 'package:flutter_web/widgets.dart';

class MyDetailsColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedPadding(
      duration: Duration(seconds: 1),
      padding: EdgeInsets.only(left: 20, right: 20, top: 40),
      child: ListView(
        shrinkWrap: ResponsiveWidget.isSmallScreen(context) ? true : false,
        children: [
          _MyAvatar(),
          AnimatedPadding(
            duration: Duration(seconds: 1),
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Text(
              "Horace Bell-Gam",
              textAlign: ResponsiveWidget.isSmallScreen(context)
                  ? TextAlign.center
                  : TextAlign.start,
              style: Theme.of(context).textTheme.title,
            ),
          ),
          AnimatedPadding(
            duration: Duration(seconds: 1),
            padding: EdgeInsets.only(bottom: 30),
            child: Text(
                "Android Engineer, Flutter hobbyist. Currently at ASOS.com",
                textAlign: ResponsiveWidget.isSmallScreen(context)
                    ? TextAlign.center
                    : TextAlign.start,
                style: Theme.of(context)
                    .textTheme
                    .body2
                    .copyWith(color: kSubheadColour, height: 1.6)),
          ),
          AnimatedPadding(
            duration: Duration(seconds: 1),
            padding: EdgeInsets.only(bottom: 30),
            child: _NavMenu(),
          ),
          ResponsiveWidget.isSmallScreen(context)
              ? ListView(
                  shrinkWrap: true,
                  children: [_SocialIconsGrid(), AboutMeWidget(), _SiteFooter(), Container(height: 60)],
                )
              : ListView(
                  shrinkWrap: true,
                  children: [
                    _SocialIconsGrid(),
                    _SiteFooter(),
                  ],
                )
        ],
      ),
    );
  }
}

class _SiteFooter extends StatelessWidget {
  const _SiteFooter({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 20),
          child: Text(
            "© All rights reserved.\nHorace Bell-Gam 2019 \n\nBuilt with Flutter\n",
            style: Theme.of(context).textTheme.body1,
          ),
        ),
        InkWell(
            onTap: () {
              html.window.open("https://lumen.netlify.com", "");
            },
            child: Text(
              "Theme inspired by this Gatsby Starter",
              style: Theme.of(context)
                  .textTheme
                  .body1
                  .copyWith(decoration: TextDecoration.underline),
            )
        )
      ],
    );
  }
}

class _MyAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: ResponsiveWidget.isSmallScreen(context)
          ? Alignment.center
          : Alignment.topLeft,
      child: SizedBox(
        height: 75,
        width: 75,
        child: CircleAvatar(
          backgroundImage: AssetImage('images/my_avatar.jpg'),
        ),
      ),
    );
  }
}

class _HeaderNavButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  _HeaderNavButton({Key key, @required this.onPressed, this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20, bottom: 10),
      child: InkWell(
        onTap: onPressed,
        child: Text(
          text,
          style: Theme.of(context).textTheme.body2,
        ),
      ),
    );
  }
}

class _NavMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var children = [
      _HeaderNavButton(
        onPressed: () {},
        text: "Blog",
      ),
      _HeaderNavButton(
        onPressed: () {},
        text: "About",
      ),
      _HeaderNavButton(
        onPressed: () {},
        text: "Contact",
      ),
    ];

    return ResponsiveWidget(
        largeScreen: ResponsiveWidget.isSmallScreen(context)
            ? Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: children,
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: children,
              ));
  }
}

class _SocialIconsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var topRow = [
      _SocialIcon(
          imagePath: "icons/email_30.png", url: "mailto:horace@horacebg.com"),
      _SocialIcon(
          imagePath: "icons/twitter_30.png",
          url: "https://www.twitter.com/HoraceBG"),
      _SocialIcon(
          imagePath: "icons/linkedin_30.png",
          url: "https://www.linkedin.com/in/horace-bell-gam-32597222/"),
    ];
    var bottomRow = [
      _SocialIcon(
          imagePath: "icons/github_30.png",
          url: "https://github.com/dev-horacebg"),
      _SocialIcon(
          imagePath: "icons/stackoverflow_30.png",
          url: "https://stackoverflow.com/users/568485/hbg"),
    ];

    var smallScreen = ResponsiveWidget.isSmallScreen(context);
    if (smallScreen) {
      return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [...topRow, ...bottomRow],
          )
        ],
      );
    }
    return Column(
      children: [
        Row(
          children: topRow,
        ),
        Row(
          children: bottomRow,
        ),
      ],
    );
  }
}

class _SocialIcon extends StatelessWidget {
  final String imagePath;
  final String url;

  const _SocialIcon({Key key, @required this.imagePath, @required this.url})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, right: 8, bottom: 8),
      child: Container(
        decoration: new BoxDecoration(
          shape: BoxShape.circle,
          border: new Border.all(
            color: kDividerColour,
            width: 1,
          ),
        ),
        child: CircleAvatar(
          backgroundColor: Colors.white,
          child: InkWell(
              onTap: () {
                html.window.open(url, "");
              },
              child: ImageIcon(AssetImage(imagePath))),
        ),
      ),
    );
  }
}
