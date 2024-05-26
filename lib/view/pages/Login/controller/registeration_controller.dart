//F I R S T code here is just pass after registration in google by Firebase to next screen
import 'package:get/get.dart';
import '../../../Service/service.dart';
import '../../Users List/users_list_screen.dart';

class AuthController extends GetxController {
  final AuthService _authService = AuthService();

  Future<void> login() async {
    try {
      final user = await _authService.signInWithGoogle();
      if (user == null) {
        Get.snackbar('Error', 'Google Sign-In cancelled',
            snackPosition: SnackPosition.BOTTOM);
        return;
      }

      Get.to(() => UsersListScreen());
    } catch (error) {
      Get.snackbar('Error', error.toString(),
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  Future<void> signOut() async {
    await _authService.signOut();
  }
}

//
// in first code (API is only defined users has access to registration and login)
// i Don't have access to register user
// S E C O N D code here should be work to register user


//       final response = await http.post(
//         Uri.parse('https://reqres.in/api/register'),
//         headers: {'Content-Type': 'application/json'},
//         body: jsonEncode({'email': email, 'password': 'your_default_password'}),
//       );
//
//       if (response.statusCode == 200) {
//         Get.to(() => UsersListScreen());
//       } else {
//         Get.snackbar('Error', 'Failed to register user: ${response.body}', snackPosition: SnackPosition.BOTTOM);
//       }
//     } catch (error) {
//       Get.snackbar('Error', error.toString(), snackPosition: SnackPosition.BOTTOM);
//     }
//   }
