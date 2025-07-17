import 'dart:io';

import 'package:get/get.dart';
import 'package:todo_workshop_one/common%20widget/custom_toast.dart';
import 'package:todo_workshop_one/uitilies/network/api_urls.dart';

import '../../../uitilies/network/base_client.dart';

class SignUpController extends GetxController {
  var isLoading = false.obs;

  Future<void> registerUser({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
    required String address,
    File? file,
  }) async {
    isLoading.value = true;

    Map<String, String> body = {
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'password': password,
      'address': address,
    };

    try {
      var response = await BaseClient.multipartAddRequest(
        api: ApiUrl.signUp,
        body: body,
      );

      CustomToast.showToast(response["message"], isError: false);
    } catch (e) {
      Get.snackbar("Error", e.toString());
    } finally {
      isLoading.value = false;
    }
  }
}
