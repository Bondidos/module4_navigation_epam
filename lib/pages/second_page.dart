import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:module4_navigation_epam/api_model/user.dart';
import 'package:module4_navigation_epam/rest_api_service/rest_api.dart';

class SecondPage extends StatelessWidget {
  final String messageFromFirst;

  SecondPage({Key? key, required this.messageFromFirst}) : super(key: key);

  final RestClient client = RestClient(Dio());
  var _isLoading = false;

  Future<List<User>> getUsersFromApi() async {
    try {
      var list = await client.getUsers();
      _isLoading = true;
      return list;
    } catch (error) {
      ErrorWidget(error);
    }
    return [];
  }

  _onTap(BuildContext context, User user) => Navigator.pop(context, user);

  Widget userItem(User user, BuildContext context) {
    return GestureDetector(
      onTap: () => _onTap(context, user),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blueGrey,
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("User nickname: " + user.username),
            Text("User name: " + user.name),
            Text("User email: " + user.email),
            Text("Address: " + user.address.toString()),
            Text("User phone: " + user.phone),
            Text("User website: " + user.website),
            Text("User company: " + user.company.toString()),
          ],
        ),
      ),
    );
  }

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
            return (_isLoading)
                ? ListView.builder(
                    itemCount: snapshot.data?.length,
                    itemBuilder: (BuildContext context, int index) {
                      return (snapshot.data != null)
                          ? userItem(snapshot.data![index], context)
                          : Container();
                    },
                  )
                : const CircularProgressIndicator(
                    strokeWidth: 8,
                  );
          },
        ),
      ),
    );
  }
}
