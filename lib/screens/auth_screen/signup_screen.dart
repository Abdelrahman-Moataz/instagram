import 'dart:io';

import 'package:instagram/constants/constants.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final formKey = GlobalKey<FormState>();
  File? pickImage;

  void selectImage() async {
    var image = await ImagePicker().pickImage(source: ImageSource.gallery);
    var selected = File(image!.path);
    if (image != null) {
      setState(() {
        pickImage = selected;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                SizedBox(
                  height: h * 0.1,
                ),
                const Text(
                  instagram,
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(
                  height: h * 0.05,
                ),
                Stack(
                  children: [
                    pickImage != null
                        ? CircleAvatar(
                            radius: 30,
                            backgroundImage: FileImage(pickImage!),
                          )
                        : const CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(
                                "https://logodix.com/logo/4269.png"),
                          ),
                    Positioned(
                      top: 25,
                      left: 25,
                      child: IconButton(
                        onPressed: () {
                          selectImage();
                        },
                        icon: const Icon(Icons.add),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: h * 0.05,
                ),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      LoginFormField(
                        title: name,
                        onPress: (value) {
                          if (value!.isEmpty) {
                            return plzEnterYourName;
                          }
                        },
                      ),
                      SizedBox(
                        height: h * 0.03,
                      ),
                      LoginFormField(
                        title: email,
                        onPress: (value) {
                          if (value!.isEmpty || !value.contains("@")) {
                            return plzEnterValidEmail;
                          }
                        },
                      ),
                      SizedBox(
                        height: h * 0.03,
                      ),
                      LoginFormField(
                        title: password,
                        icon: const Icon(Icons.visibility_off),
                        onPress: (value) {
                          if (value!.isEmpty || value.length < 7) {
                            return plzEnterValidPassword;
                          }
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: h * 0.05,
                ),
                SizedBox(
                  height: h * 0.05,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      formKey.currentState!.save();
                      if (formKey.currentState!.validate()) {}
                    },
                    child: const Text(signUp),
                  ),
                ),
                TextButton(
                    onPressed: () {}, child: const Text(doYouHaveAnAccount)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
