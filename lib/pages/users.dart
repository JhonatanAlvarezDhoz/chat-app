import 'package:flutter/material.dart';

import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../models/temp_user.dart';

class UsersPage extends StatefulWidget {
  const UsersPage({super.key});

  @override
  State<UsersPage> createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage> {
  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  List<User> userList = [
    User(onLine: true, email: "jota@email.com", name: "Jota", uid: "1"),
    User(
        onLine: true,
        email: "maria.utria@email.com",
        name: "Maria Utria",
        uid: "2"),
    User(
        onLine: false,
        email: "jose.joaquin@email.com",
        name: "Jose Joaquin",
        uid: "3"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Mi Name",
          style: TextStyle(color: Colors.black54),
        ),
        elevation: 1,
        backgroundColor: Colors.white,
        leading: Container(
          margin: const EdgeInsets.only(right: 10),
          child: const Icon(
            Icons.check_circle,
            color: Colors.blue,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.exit_to_app, color: Colors.black54),
          ),
          // Icon(
          //   Icons.offline_bolt,
          //   color: Colors.red,
          // ),
        ],
      ),
      body: SmartRefresher(
        controller: _refreshController,
        onRefresh: _refreshUser,
        header: WaterDropHeader(
            complete: Icon(Icons.check, color: Colors.blue[400]),
            waterDropColor: Colors.blue),
        child: _listViewUsers(),
      ),
    );
  }

  ListView _listViewUsers() {
    return ListView.separated(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (_, index) => _userListTile(userList[index]),
        separatorBuilder: (_, index) => const Divider(),
        itemCount: userList.length);
  }

  ListTile _userListTile(User user) {
    return ListTile(
      title: Text(user.name),
      leading: CircleAvatar(
        backgroundColor: Colors.blue[100],
        child: Text(user.name.substring(0, 2)),
      ),
      trailing: Container(
        width: 10,
        height: 10,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: user.onLine ? Colors.green : Colors.red),
      ),
    );
  }

  _refreshUser() async {
    await Future.delayed(const Duration(milliseconds: 1000));

    _refreshController.refreshCompleted();
  }
}
