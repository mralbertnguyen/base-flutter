import 'package:flutter/material.dart';

abstract class BaseWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BaseStatefulWidget(
      onInitBackground: onInitBackground(),
      onInitAppBar: onInitAppBar(context),
      onInitBody: onInitBody(context),
      onInitBottomNavigationBar: onInitBottomNavigationBar(context),
      onInitBottomSheet: onInitBottomSheet(context),
      onInitDrawer: onInitDrawer(context),
      onInitEndDrawer: onInitEndDrawer(context),
      onInitFloatingActionButton: onInitFloatingActionButton(context),
      onInitKey: onInitKey(context),
      setPrimary: setPrimary(context),
      setResizeToAvoidBottomPadding: setResizeToAvoidBottomPadding(context),
    
    );
  }

  /**
   * Init Widgets
   * 
   */

  BoxDecoration onInitBackground() {
    // return BoxDecoration(
    //     image: DecorationImage(image: AssetImage(PATH_BR), fit: BoxFit.cover));
  }

  ///Widget key
  Key onInitKey(BuildContext context) {
    return null;
  }

  /// Appbar widget
  Widget onInitAppBar(BuildContext context) {
    return null;
  }

  /// Body widget
  Widget onInitBody(BuildContext context) {
    return null;
  }

  /// Floating action button widget
  Widget onInitFloatingActionButton(BuildContext context) {
    return null;
  }

  /// Drawer menu widget
  Widget onInitDrawer(BuildContext context) {
    return null;
  }

  /// End Drawer widget
  Widget onInitEndDrawer(BuildContext context) {
    return null;
  }

  /// Bottom Navigation Bar widget
  Widget onInitBottomNavigationBar(BuildContext context) {
    return null;
  }

  /// Bottom sheet widget
  Widget onInitBottomSheet(BuildContext context) {
    return null;
  }

  /// Set Resize to avoid bottom padding
  bool setResizeToAvoidBottomPadding(BuildContext context) {
    return true;
  }

  /// Set primary
  bool setPrimary(BuildContext context) {
    return true;
  }

  BoxDecoration initDecoration(BuildContext context) {
    return null;
  }
}

class BaseStatefulWidget extends StatefulWidget {
  BaseStatefulWidget(
      {@required this.onInitBackground,
      @required this.initBody,
      @required this.onInitKey,
      @required this.onInitAppBar,
      @required this.onInitBody,
      @required this.onInitFloatingActionButton,
      @required this.onInitDrawer,
      @required this.onInitEndDrawer,
      @required this.onInitBottomNavigationBar,
      @required this.onInitBottomSheet,
      @required this.setResizeToAvoidBottomPadding,
      @required this.setPrimary});
  final BoxDecoration onInitBackground;
  final Widget initBody;
  final Key onInitKey;
  final Widget onInitAppBar;
  final Widget onInitBody;
  final Widget onInitFloatingActionButton;
  final Widget onInitDrawer;
  final Widget onInitEndDrawer;
  final Widget onInitBottomNavigationBar;
  final Widget onInitBottomSheet;
  final bool setResizeToAvoidBottomPadding;
  final bool setPrimary;

  @override
  State<StatefulWidget> createState() {
    return BaseState(
        onInitKey: this.onInitKey,
        onInitAppBar: this.onInitAppBar,
        onInitBody: this.onInitBody,
        onInitFloatingActionButton: this.onInitFloatingActionButton,
        onInitDrawer: this.onInitDrawer,
        onInitEndDrawer: this.onInitEndDrawer,
        onInitBottomNavigationBar: this.onInitBottomNavigationBar,
        onInitBottomSheet: this.onInitBottomSheet,
        setResizeToAvoidBottomPadding: this.setResizeToAvoidBottomPadding,
        setPrimary: this.setPrimary);
  }
}

class BaseState extends State<BaseStatefulWidget> {
  BaseState(
      {@required this.onInitBackground,
      @required this.initBody,
      @required this.onInitKey,
      @required this.onInitAppBar,
      @required this.onInitBody,
      @required this.onInitFloatingActionButton,
      @required this.onInitDrawer,
      @required this.onInitEndDrawer,
      @required this.onInitBottomNavigationBar,
      @required this.onInitBottomSheet,
      @required this.setResizeToAvoidBottomPadding,
      @required this.setPrimary});
  final BoxDecoration onInitBackground;
  final Widget initBody;
  final Key onInitKey;
  final Widget onInitAppBar;
  final Widget onInitBody;
  final Widget onInitFloatingActionButton;
  final Widget onInitDrawer;
  final Widget onInitEndDrawer;
  final Widget onInitBottomNavigationBar;
  final Widget onInitBottomSheet;
  final bool setResizeToAvoidBottomPadding;
  final bool setPrimary;

  Widget build(BuildContext context) {
    return Container(
      decoration: onInitBackground,
      child: GestureDetector(
        onTap: () {
          // Disable keyboard when tap anywhere outside Text feild
          FocusScope.of(context).autofocus(FocusNode());
        },
        child: Scaffold(
          key: onInitKey,
          appBar: onInitAppBar,
          body: onInitBody == null ? _defaultBody() : onInitBody,
          floatingActionButton: onInitFloatingActionButton,
          drawer: onInitDrawer,
          endDrawer: onInitEndDrawer,
          bottomNavigationBar: onInitBottomNavigationBar,
          bottomSheet: onInitBottomSheet,
          backgroundColor: Colors.transparent,
          resizeToAvoidBottomPadding: setResizeToAvoidBottomPadding,
          primary: setPrimary,
        ),
      ),
    );
  }

  /**
   * Default body
   */
  Widget _defaultBody() {
    print("default body");
    return Container(
      width: 900,
      height: 500,
      decoration: BoxDecoration(color: Colors.red),
      child: Center(
        child: Text("Bodey"),
      ),
    );
  }

  // Title widget
  String initTitle() {
    return null;
  }

  /// Start screen
  dynamic pushScreen(BuildContext context, String screenName) async {
    return await Navigator.pushNamed(context, screenName);
  }

  /// Start with replacement screen
  dynamic pushReplaceScreen(BuildContext context, String screenName) async {
    return await Navigator.pushReplacementNamed(context, screenName);
  }

  /// Back screen.
  void popScreen(BuildContext context, {dynamic data}) {
    if (data == null) {
      Navigator.pop(context);
    } else {
      Navigator.pop(context, data);
    }
  }
}
