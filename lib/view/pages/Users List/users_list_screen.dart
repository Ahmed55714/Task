import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello/utils/colors.dart';

import '../../widgets/User Card/user_card.dart';
import 'controller/user_controller.dart';

class UsersListScreen extends StatefulWidget {
  @override
  State<UsersListScreen> createState() => _UsersListScreenState();
}

class _UsersListScreenState extends State<UsersListScreen> {
  final UserController userController = Get.put(UserController());

  @override
  void initState() {
    super.initState();
    userController.fetchUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: colorBlue,
        title: const Text(
          'Users List',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 23,
          ),
        ),
      ),
      body: Obx(() {
        if (userController.users.isEmpty) {
          return const Center(child: CircularProgressIndicator());
        } else {
          return ListView.builder(
            itemCount: userController.users.length,
            itemBuilder: (context, index) {
              final user = userController.users[index];
              return UserCard(user: user);
            },
          );
        }
      }),
    );
  }
}
