import 'package:instagram/constants/constants.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final formKey = GlobalKey<FormState>();
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

                Form(
                  key: formKey,
                  child: Column(
                    children: [

                      LoginFormField(
                        title: email,
                        onPress: (value) {
                          if(value!.isEmpty||!value.contains("@")){
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
                          if(value!.isEmpty||value.length<7){
                            return plzEnterValidPassword;
                          }
                        },
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: h * 0.05,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      formKey.currentState!.save();
                      if(formKey.currentState!.validate()){

                      }
                    },
                    child: const Text(logIn),
                  ),
                ),
                TextButton(
                    onPressed: () {}, child: const Text(signUp)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
