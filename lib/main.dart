import 'dart:io';

import 'package:instagram/constants/constants.dart';
import 'package:instagram/screens/auth_screen/signup_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Firebase
  if (Platform.isAndroid) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyDalIJ-QEHHJvWfswySyGhb9nnmxYciL30",
        appId: "1:858544194835:android:c2ed99a8e8dde3860386e6",
        messagingSenderId: "858544194835",
        projectId: "instagram-6f972",
        storageBucket: "instagram-6f972.appspot.com",
      ),
    );
  } else {
    await Firebase.initializeApp();
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.black
      ),
      home: const SignUpScreen(),
    );
  }
}
