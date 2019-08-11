import 'package:flutter_portfolio/about/widget/about_me_widget.dart';
import 'package:flutter_portfolio/app_theme.dart';
import 'package:flutter_portfolio/colours.dart';
import 'package:flutter_portfolio/home/my_details_column.dart';
import 'package:flutter_portfolio/responsive_widget.dart';
import 'package:flutter_web/material.dart';
import 'package:flutter_web/widgets.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: AppTheme.buildTheme(),
        home: Scaffold(
            body: SafeArea(
                child: ResponsiveWidget(
                    largeScreen: Row(
                      children: [
                        Expanded(flex: 1, child: Container()),
                        Expanded(flex: 3, child: MyDetailsColumn()),
                        Container(width: 1, height: 640, color: kGrey),
                        Expanded(flex: 5, child: AboutMeWidget()),
                        Expanded(flex: 1, child: Container()),
                      ],
                    ),
                    smallScreen: MyDetailsColumn()))));
  }

  @override
  Widget build2(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Scaffold(
        appBar: AppBar(elevation: 0),
        body: SingleChildScrollView(
          child: AnimatedPadding(
            padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.1),
            duration: Duration(seconds: 1),
            child: ResponsiveWidget(
                largeScreen: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                NavHeader(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                Container(height: 140),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2,
                ),
              ],
            )),
          ),
        ),
      ),
    );
  }
}

class NavHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: ResponsiveWidget.isSmallScreen(context)
            ? MainAxisAlignment.center
            : MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Logo(),
          if (!ResponsiveWidget.isSmallScreen(context)) NavButtonBlock()
        ],
      ),
    );
  }
}

class NavButtonBlock extends StatelessWidget {
  const NavButtonBlock({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      OutlineButton(
        child: Text("About"),
        onPressed: () {},
      ),
      OutlineButton(
        child: Text("Projects"),
        onPressed: () {},
      ),
    ]);
  }
}

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("HB"),
        Text("Something something Android Engineer"),
      ],
    );
  }
}
