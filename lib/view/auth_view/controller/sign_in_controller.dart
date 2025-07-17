import 'dart:io';

import 'package:get/get.dart';
import 'package:todo_workshop_one/common%20widget/custom_toast.dart';
import 'package:todo_workshop_one/uitilies/network/api_urls.dart';
import '../../../uitilies/network/base_client.dart';

class SignInController extends GetxController {
  var isLoading = false.obs;

  Future<void> signIn({required String email, required String password}) async {
    isLoading.value = true;

    Map<String, String> body = {'email': email, 'password': password};

    try {
      var response = await BaseClient.postRequest(
        api: ApiUrl.signUp,
        body: body,
      );

      CustomToast.showToast(response["message"], isError: false);
    } catch (e) {
      CustomToast.showToast("Failed to register", isError: true);
    } finally {
      isLoading.value = false;
    }
  }
}
