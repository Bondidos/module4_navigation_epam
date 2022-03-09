import 'package:flutter/material.dart';
import 'package:module4_navigation_epam/generated/l10n.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => exitDialog(context),
      child: Scaffold(
        appBar: AppBar(
          title: Text(S.of(context).firstPageAppBarTitle),
        ),
        body: Center(
          child: MaterialButton(
            onPressed: () => navigateSecondPage(context),
            child: Text(S.of(context).actionButtonTitle),
          ),
        ),
      ),
    );
  }

  Future<void> navigateSecondPage(BuildContext context) async {
    var answer = await Navigator.pushNamed(
      context,
      '/second',
      arguments: S.of(context).messageToSecondPage,
    );
    (answer != null) ? showAlert(context, answer.toString()) : null;
  }

  Future<bool> exitDialog(BuildContext context) async => await showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
          title: Text(S.of(context).confirmExitDialog),
          actions: <Widget>[
            MaterialButton(
              child: Text(S.of(context).confirmYes),
              onPressed: () => Navigator.of(context).pop(true),
            ),
            MaterialButton(
              child: Text(S.of(context).confirmNo),
              onPressed: () => Navigator.of(context).pop(false),
            )
          ],
        ),
      );

  Future<void> showAlert(BuildContext context, String result) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true,
      builder: (context) => AlertDialog(
        title: Text(S.of(context).alertFromSecondTitle),
        content: Text(result),
        actions: [
          MaterialButton(
            child: Text(S.of(context).confirmOk),
            onPressed: () {
              Navigator.of(context).pop();
            },
          )
        ],
      ),
    );
  }
}
