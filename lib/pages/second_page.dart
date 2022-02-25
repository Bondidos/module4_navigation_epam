import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:module4_navigation_epam/api_model/user.dart';
import 'package:module4_navigation_epam/rest_api_service/rest_api.dart';

class SecondPage extends StatefulWidget {
  final String messageFromFirst;
  const SecondPage({Key? key, required this.messageFromFirst})
      : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  final RestClient client = RestClient(Dio());
  final logger = Logger();

  Future<List<User>> getUsersFromApi() async =>
      await client.getUsers();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second page"),
      ),
      body: Center(
        child: FutureBuilder(
          future: getUsersFromApi(),
          builder: (BuildContext context, AsyncSnapshot<List<User>> snapshot) {
            return ListView.builder(
              itemCount: snapshot.data?.length,
              itemBuilder: (BuildContext context, int index) {
                // logger.d(snapshot.data ?? "Log error");
                return ListTile(
                  title: Text(snapshot.data?.elementAt(index).name ?? ""),
                  subtitle: Text(snapshot.data?.elementAt(index).company.toString() ?? ""),
                );
              },

            );
          },
        ),
      ),
    );
  }
}
