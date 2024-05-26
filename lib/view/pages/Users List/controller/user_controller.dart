import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../model/user_model.dart';

class UserController extends GetxController {
  var users = <User>[].obs;

  Future<void> fetchUsers() async {
    final response = await http.get(Uri.parse('https://reqres.in/api/users'));

    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body)['data'];
      users.value = data.map((userJson) => User.fromJson(userJson)).toList();
    } else {
      Get.snackbar('Error', 'Failed to fetch users', snackPosition: SnackPosition.BOTTOM);
    }
  }
}
