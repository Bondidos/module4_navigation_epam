import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => exitDialog(context),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("First Page"),
        ),
        body: Center(
          child: MaterialButton(
            onPressed: () => navigateSecondPage(context),
            child: const Text("Navigate second page"),
          ),
        ),
      ),
    );
  }

  Future<void> navigateSecondPage(BuildContext context) async {
    await Navigator.pushNamed(
      context,
      '/second',
      arguments: 'Hell!(o) from first page',
    ).then((value) => showAlert(context, value.toString()));
  }

  Future<bool> exitDialog(BuildContext context) async => await showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
          title: const Text("Are you sure whant to exit?"),
          actions: <Widget>[
            MaterialButton(
              child: const Text("Yes"),
              onPressed: () => Navigator.of(context).pop(true),
            ),
            MaterialButton(
              child: const Text("No"),
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
        title: const Text("Message from second page is:"),
        content: Text(result),
        actions: [
          MaterialButton(
            child: const Text("Ok"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          )
        ],
      ),
    );
  }
}
