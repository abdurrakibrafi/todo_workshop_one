import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ImagePickerController extends GetxController {
  var selectedImagePath = ''.obs;
  var profilePickImagePath = ''.obs;

  Future<void> pickImage(ImageSource source) async {
    final pickedFile = await ImagePicker().pickImage(source: source);

    if (pickedFile != null) {
      selectedImagePath.value = pickedFile.path;
    } else {
      Get.snackbar("Error", "No image selected", backgroundColor: Colors.red);
    }
  }

  Future<void> profilePickImage(ImageSource source) async {
    final profilePickedFile = await ImagePicker().pickImage(source: source);

    if (profilePickedFile != null) {
      profilePickImagePath.value = profilePickedFile.path;
    } else {
      Get.snackbar("Error", "No image selected", backgroundColor: Colors.red);
    }
  }
}
