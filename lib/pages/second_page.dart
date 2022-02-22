import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key,required this.messageFromFirst}) : super(key: key);
  final String messageFromFirst;


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Second page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(messageFromFirst),
            MaterialButton(
              onPressed: () {
                Navigator.pop(context,"Return 42");
              },
              child: const Text("Return 42"),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.pop(context,"Return AbErVaLlG");
              },
              child: const Text("Return AbErVaLlG"),
            ),
          ],
        ),
      ),
    );
  }
}
