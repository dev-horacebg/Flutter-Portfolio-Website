import 'package:flutter_web/widgets.dart';

const SMALL_SCREEN_BREAKPOINT = 800;
const LARGE_SCREEN_BREAKPOINT = 1200;

class ResponsiveWidget extends StatelessWidget {
  final Widget largeScreen;
  final Widget mediumScreen;
  final Widget smallScreen;

  const ResponsiveWidget(
      {Key key,
      @required this.largeScreen,
      this.mediumScreen,
      this.smallScreen})
      : super(key: key);

  static bool isLargeScreen(BuildContext context) =>
      MediaQuery.of(context).size.width > SMALL_SCREEN_BREAKPOINT;

  static bool isMediumScreen(BuildContext context) =>
      MediaQuery.of(context).size.width > SMALL_SCREEN_BREAKPOINT &&
      MediaQuery.of(context).size.width < LARGE_SCREEN_BREAKPOINT;

  static bool isSmallScreen(BuildContext context) =>
      MediaQuery.of(context).size.width < SMALL_SCREEN_BREAKPOINT;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > SMALL_SCREEN_BREAKPOINT) {
          return largeScreen;
        } else if (constraints.maxWidth < LARGE_SCREEN_BREAKPOINT &&
            constraints.maxWidth > SMALL_SCREEN_BREAKPOINT) {
          return mediumScreen;
        } else {
          return smallScreen ?? largeScreen;
        }
      },
    );
  }
}
