import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tes1/app/modules/home/controllers/profile_controller.dart';

class ProfilePage extends StatelessWidget {
  final ProfileController profileController = Get.put(ProfileController());

  // Menghapus kata kunci 'const' dari konstruktor
  ProfilePage({Key? key}) : super(key: key); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text('Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => CircleAvatar(
                  radius: 80,
                  backgroundImage: profileController.profileImage.value != null
                      ? MemoryImage(profileController.profileImage.value!)
                      : null,
                  backgroundColor: Colors.grey[800],
                  child: profileController.profileImage.value == null
                      ? const Icon(Icons.person, size: 80, color: Colors.white)
                      : null,
                )),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: profileController.pickImage,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 0, 0, 0),
              ),
              child: const Text(
                'Pick Profile Image',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
