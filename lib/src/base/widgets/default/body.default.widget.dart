import 'package:baseflutter/src/base/widgets/BaseWidget.dart';
import 'package:flutter/widgets.dart';

class BodyDefault extends BaseScreen {
  @override
  Widget onInitBody(BuildContext context) {
    return Container(
      child: Center(
        child: Text("This is default container body"),
      ),
    );
  }
}
